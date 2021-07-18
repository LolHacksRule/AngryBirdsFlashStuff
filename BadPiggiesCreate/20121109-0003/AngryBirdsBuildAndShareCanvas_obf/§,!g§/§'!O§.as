package §,!g§
{
   public class §'!O§
   {
       
      
      protected var mX:Number;
      
      protected var mY:Number;
      
      protected var §=9§:Number;
      
      protected var §0!k§:Boolean;
      
      public function §'!O§(param1:Number, param2:Number, param3:Number, param4:Boolean)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            super();
            while(true)
            {
               this.mX = param1;
               loop1:
               while(!(_loc5_ && param1))
               {
                  while(true)
                  {
                     this.mY = param2;
                     do
                     {
                        this.§=9§ = param3;
                        do
                        {
                           this.§0!k§ = param4;
                        }
                        while(_loc5_);
                        
                     }
                     while(_loc5_);
                     
                     if(_loc6_ || param2)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr86);
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function get scale() : Number
      {
         return this.§=9§;
      }
      
      public function get §>"1§() : Boolean
      {
         return this.§0!k§;
      }
   }
}
