package §<!j§
{
   public class §5S§
   {
       
      
      protected var §`!%§:Number;
      
      protected var §else§:Number;
      
      protected var §7!H§:Number;
      
      protected var §!!>§:Boolean;
      
      public function §5S§(param1:Number, param2:Number, param3:Number, param4:Boolean)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            super();
         }
         loop0:
         do
         {
            this.§`!%§ = param1;
            while(true)
            {
               this.§else§ = param2;
               while(_loc6_ || param3)
               {
                  this.§7!H§ = param3;
                  do
                  {
                     this.§!!>§ = param4;
                  }
                  while(!(_loc6_ || param1));
                  
                  if(!(_loc5_ && param1))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc5_ && param2);
         
      }
      
      public function get x() : Number
      {
         return this.§`!%§;
      }
      
      public function get y() : Number
      {
         return this.§else§;
      }
      
      public function get scale() : Number
      {
         return this.§7!H§;
      }
      
      public function get §>H§() : Boolean
      {
         return this.§!!>§;
      }
   }
}
