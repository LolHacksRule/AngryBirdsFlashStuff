package §=E§
{
   import §3G§.§!E§;
   
   public class §;S§ extends §0?§
   {
       
      
      protected var §`!'§:String = null;
      
      protected var §;`§:Boolean = true;
      
      protected var §=D§:Number = 1.0;
      
      public function §;S§(param1:§!E§, param2:String = null, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1);
            if(_loc5_)
            {
               this.§`!'§ = param2;
               if(!_loc4_)
               {
                  addr29:
                  this.§;`§ = param3;
               }
            }
            return;
         }
         §§goto(addr29);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §33§.initEmptyEnvironment(this.§`!'§,this.§;`§);
            if(_loc2_)
            {
               addr27:
               §33§.camera.initSlowScroll(this.§=D§);
            }
            return;
         }
         §§goto(addr27);
      }
   }
}
