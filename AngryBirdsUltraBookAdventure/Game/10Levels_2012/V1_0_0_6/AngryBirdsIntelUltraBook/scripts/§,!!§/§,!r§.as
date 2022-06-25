package §,!!§
{
   public class §,!r§
   {
       
      
      protected var §#!u§:Number;
      
      protected var §<h§:Number;
      
      protected var §'!I§:Number;
      
      protected var §%!5§:Boolean;
      
      public function §,!r§(param1:Number, param2:Number, param3:Number, param4:Boolean)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            super();
            while(true)
            {
               this.§#!u§ = param1;
               addr84:
               if(_loc5_ && param2)
               {
                  continue;
               }
               this.§'!I§ = param3;
               while(_loc6_ || this)
               {
                  this.§%!5§ = param4;
                  if(_loc6_ || param2)
                  {
                     return;
                  }
               }
               while(_loc6_ || param1)
               {
                  §§goto(addr84);
                  §§goto(addr55);
               }
               addr55:
               while(true)
               {
                  this.§<h§ = param2;
                  §§goto(addr77);
               }
               addr77:
               addr96:
            }
         }
         §§goto(addr96);
      }
      
      public function get x() : Number
      {
         return this.§#!u§;
      }
      
      public function get y() : Number
      {
         return this.§<h§;
      }
      
      public function get scale() : Number
      {
         return this.§'!I§;
      }
      
      public function get §"2§() : Boolean
      {
         return this.§%!5§;
      }
   }
}
