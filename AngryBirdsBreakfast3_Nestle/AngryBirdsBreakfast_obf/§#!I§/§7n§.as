package §#!I§
{
   public class §7n§
   {
       
      
      protected var §]!B§:Number;
      
      protected var §9=§:Number;
      
      protected var §2c§:Number;
      
      protected var §8!B§:Boolean;
      
      public function §7n§(param1:Number, param2:Number, param3:Number, param4:Boolean)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            super();
            while(true)
            {
               this.§]!B§ = param1;
               addr63:
               if(_loc6_ && param2)
               {
                  continue;
               }
               this.§8!B§ = param4;
               addr70:
               if(_loc5_ || this)
               {
                  addr49:
                  if(_loc6_ && param2)
                  {
                     while(true)
                     {
                        this.§9=§ = param2;
                        while(true)
                        {
                           this.§2c§ = param3;
                           addr61:
                           while(_loc5_)
                           {
                              §§goto(addr63);
                              §§goto(addr70);
                           }
                        }
                        §§goto(addr49);
                     }
                     addr90:
                  }
                  return;
               }
               §§goto(addr61);
            }
         }
         §§goto(addr90);
      }
      
      public function get x() : Number
      {
         return this.§]!B§;
      }
      
      public function get y() : Number
      {
         return this.§9=§;
      }
      
      public function get scale() : Number
      {
         return this.§2c§;
      }
      
      public function get §]D§() : Boolean
      {
         return this.§8!B§;
      }
   }
}
