package §"m§
{
   import §,!5§.§^g§;
   
   public class §;!v§ extends §1!%§
   {
       
      
      protected var §+!m§:String = null;
      
      protected var §^!m§:Boolean = true;
      
      protected var §4![§:Number = 1.0;
      
      public function §;!v§(param1:§^g§, param2:String = null, param3:Boolean = true)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1);
            while(true)
            {
               this.§+!m§ = param2;
               loop1:
               while(_loc4_ || param3)
               {
                  while(true)
                  {
                     this.§^!m§ = param3;
                     if(!_loc5_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr51);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §?l§.initEmptyEnvironment(this.§+!m§,this.§^!m§);
            do
            {
               §?l§.camera.initSlowScroll(this.§4![§);
            }
            while(_loc1_ && this);
            
         }
      }
   }
}
