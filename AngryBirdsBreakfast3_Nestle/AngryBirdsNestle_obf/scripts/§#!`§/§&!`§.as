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
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            super(param1,param2);
            while(true)
            {
               this.§3?§ = param3;
               loop1:
               while(_loc5_)
               {
                  while(true)
                  {
                     this.§^"§ = param4;
                     if(!_loc6_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr61);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §!`§.initializeEmptyEnvironment(this.§3?§,this.§^"§);
         }
         do
         {
            §!`§.camera.initSlowScroll(this.§4!k§);
         }
         while(!(_loc2_ || _loc2_));
         
      }
   }
}
