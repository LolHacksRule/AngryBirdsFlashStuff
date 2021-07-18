package §"!&§
{
   public class §+g§ extends §+W§
   {
       
      
      private var §#W§:Number;
      
      private var § !;§:Number;
      
      public function §+g§(param1:Object, param2:int, param3:§<s§, param4:§=C§, param5:int, param6:Boolean = false, param7:§="D§ = null)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
            while(true)
            {
               this.§#W§ = param1.spawnedObjectSpeed;
               while(_loc9_)
               {
                  this.§ !;§ = param1.specialActivationDelay;
                  if(_loc9_ || this)
                  {
                     return;
                     addr46:
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      public function get spawnedObjectSpeed() : Number
      {
         return this.§#W§;
      }
      
      public function get specialActivationDelay() : Number
      {
         return this.§ !;§;
      }
   }
}
