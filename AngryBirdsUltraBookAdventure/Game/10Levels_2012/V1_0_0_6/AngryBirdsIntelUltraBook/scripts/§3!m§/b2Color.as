package §3!m§
{
   import §;%§.b2Math;
   
   public class b2Color
   {
       
      
      private var §2S§:uint = 0;
      
      private var §+w§:uint = 0;
      
      private var §'!B§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            super();
            while(true)
            {
               this.§2S§ = uint(255 * b2Math.§]!M§(param1,0,1));
               loop1:
               while(_loc5_ || this)
               {
                  while(true)
                  {
                     this.§+w§ = uint(255 * b2Math.§]!M§(param2,0,1));
                     do
                     {
                        this.§'!B§ = uint(255 * b2Math.§]!M§(param3,0,1));
                     }
                     while(!(_loc5_ || this));
                     
                     if(_loc5_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr108);
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§2S§ = uint(255 * b2Math.§]!M§(param1,0,1));
         }
         while(true)
         {
            this.§+w§ = uint(255 * b2Math.§]!M§(param2,0,1));
            while(_loc4_)
            {
               this.§'!B§ = uint(255 * b2Math.§]!M§(param3,0,1));
               if(_loc4_ || param2)
               {
                  return;
               }
            }
         }
      }
      
      public function set r(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§2S§ = uint(255 * b2Math.§]!M§(param1,0,1));
         }
      }
      
      public function set g(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§+w§ = uint(255 * b2Math.§]!M§(param1,0,1));
         }
      }
      
      public function set b(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§'!B§ = uint(255 * b2Math.§]!M§(param1,0,1));
         }
      }
      
      public function get color() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§2S§ << 16);
         if(!_loc1_)
         {
            §§push(this.§+w§);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() | §§pop() << 8);
               if(_loc2_)
               {
                  addr49:
                  return §§pop() | this.§'!B§;
               }
            }
         }
         §§goto(addr49);
      }
   }
}
