package §@!'§
{
   import §9t§.b2Math;
   
   public class b2Color
   {
       
      
      private var §+!M§:uint = 0;
      
      private var §,"B§:uint = 0;
      
      private var §""?§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§+!M§ = uint(255 * b2Math.§`J§(param1,0,1));
            do
            {
               this.§,"B§ = uint(255 * b2Math.§`J§(param2,0,1));
               continue loop0;
            }
            while(_loc5_);
            
            return;
         }
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            this.§+!M§ = uint(255 * b2Math.§`J§(param1,0,1));
            do
            {
               this.§,"B§ = uint(255 * b2Math.§`J§(param2,0,1));
               do
               {
                  this.§""?§ = uint(255 * b2Math.§`J§(param3,0,1));
               }
               while(_loc4_ && param1);
               
            }
            while(!(_loc5_ || param1));
            
         }
      }
      
      public function set r(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+!M§ = uint(255 * b2Math.§`J§(param1,0,1));
         }
      }
      
      public function set g(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,"B§ = uint(255 * b2Math.§`J§(param1,0,1));
         }
      }
      
      public function set b(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§""?§ = uint(255 * b2Math.§`J§(param1,0,1));
         }
      }
      
      public function get color() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§+!M§ << 16);
         if(_loc2_)
         {
            §§push(this.§,"B§);
            if(!(_loc1_ && _loc2_))
            {
               §§push(§§pop() | §§pop() << 8);
               if(!_loc1_)
               {
                  addr59:
                  return §§pop() | this.§""?§;
               }
            }
         }
         §§goto(addr59);
      }
   }
}
