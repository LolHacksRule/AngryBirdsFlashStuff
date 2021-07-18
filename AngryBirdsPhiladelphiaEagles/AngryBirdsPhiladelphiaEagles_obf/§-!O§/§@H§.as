package §-!O§
{
   public class §@H§
   {
       
      
      protected var §]!B§:Number;
      
      protected var §5G§:Number;
      
      protected var §6-§:Number;
      
      protected var §<9§:Boolean;
      
      public function §@H§(param1:Number, param2:Number, param3:Number, param4:Boolean)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super();
         }
         while(true)
         {
            this.§]!B§ = param1;
            loop1:
            while(!(_loc5_ && param2))
            {
               this.§5G§ = param2;
               loop2:
               while(true)
               {
                  this.§6-§ = param3;
                  while(true)
                  {
                     if(_loc6_)
                     {
                        if(_loc5_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§]!B§;
      }
      
      public function get y() : Number
      {
         return this.§5G§;
      }
      
      public function get scale() : Number
      {
         return this.§6-§;
      }
      
      public function get §?!I§() : Boolean
      {
         return this.§<9§;
      }
   }
}
