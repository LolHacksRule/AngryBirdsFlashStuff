package §!L§
{
   import § !D§.§'"u§;
   import §"$=§.§'![§;
   
   public class §""2§ extends § "+§
   {
       
      
      protected var §3A§:String = null;
      
      protected var §-Z§:Boolean = true;
      
      protected var §<"b§:Number = 1.0;
      
      public function §""2§(param1:§'"u§, param2:§'![§, param3:String = null, param4:Boolean = true)
      {
         super(param1,param2);
         this.§3A§ = param3;
         this.§-Z§ = param4;
      }
      
      override public function init() : void
      {
         §&!g§.initializeEmptyEnvironment(this.§3A§,this.§-Z§);
         §&!g§.camera.initSlowScroll(this.§<"b§);
      }
   }
}
