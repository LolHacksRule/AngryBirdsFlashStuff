package §#!`§
{
   import §%!B§.§0![§;
   import §@V§.§#=§;
   
   public class §&!`§ extends §+!i§
   {
       
      
      protected var §3?§:String = null;
      
      protected var §^"§:Boolean = true;
      
      protected var §4!k§:Number = 1.0;
      
      public function §&!`§(param1:§#=§, param2:§0![§, param3:String = null, param4:Boolean = true)
      {
         super(param1,param2);
         this.§3?§ = param3;
         this.§^"§ = param4;
      }
      
      override public function init() : void
      {
         §!`§.initializeEmptyEnvironment(this.§3?§,this.§^"§);
         §!`§.camera.initSlowScroll(this.§4!k§);
      }
   }
}
