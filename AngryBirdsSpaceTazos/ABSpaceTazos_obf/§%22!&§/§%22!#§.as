package §"!&§
{
   public class §"!#§ extends §]!C§
   {
       
      
      protected var §+O§:Number;
      
      protected var §1!?§:Number;
      
      public function §"!#§(param1:Object, param2:int, param3:§<s§, param4:§=C§, param5:int, param6:Boolean = false, param7:§="D§ = null)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param2))
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
         while(true)
         {
            this.§+O§ = param1.indestructibleTime;
            while(!_loc8_)
            {
               this.§1!?§ = param1.lifeTime;
               if(_loc9_)
               {
                  return;
               }
            }
         }
      }
      
      public function get indestructibleTime() : Number
      {
         return this.§+O§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§1!?§;
      }
   }
}
