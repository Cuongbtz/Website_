

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin - Quản lý LaptopWeb</title>
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
        rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>

    <link rel="stylesheet" href="css/admincp.css?v=<?php echo time(); ?>">
</head>
<?php
session_start();
if (!isset($_SESSION["dangnhap"])) {
    header('Location:login.php');
}
?>

<body>



    <?php
    include('config/config.php');
    include("modules/header.php");
    ?>
    <div class="d-flex">
        <?php
        include("modules/menu.php");
        ?>
        <div class="main-content flex-grow-1">
            <?php
            include("modules/main.php");
            ?>
        </div>
    </div>
    <?php
    include("modules/footer.php");

    ?>











</body>

</html>