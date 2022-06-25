package §_-5§
{
   import §_-Yp§.b2Math;
   
   public class b2Color
   {
       
      
      private var §_-p4§:uint = 0;
      
      private var §_-2M§:uint = 0;
      
      private var §_-bk§:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.§_-p4§ = uint(255 * b2Math.§_-ZK§(param1,0,1));
               loop1:
               while(_loc5_ || param3)
               {
                  while(true)
                  {
                     this.§_-2M§ = uint(255 * b2Math.§_-ZK§(param2,0,1));
                     do
                     {
                        this.§_-bk§ = uint(255 * b2Math.§_-ZK§(param3,0,1));
                     }
                     while(_loc4_ && param2);
                     
                     if(_loc5_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr98);
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            this.§_-p4§ = uint(255 * b2Math.§_-ZK§(param1,0,1));
            while(true)
            {
               this.§_-2M§ = uint(255 * b2Math.§_-ZK§(param2,0,1));
               §§goto(addr88);
            }
         }
         addr88:
         while(true)
         {
            this.§_-bk§ = uint(255 * b2Math.§_-ZK§(param3,0,1));
            if(!(_loc4_ && param2))
            {
               if(_loc5_ || this)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function set r(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-p4§ = uint(255 * b2Math.§_-ZK§(param1,0,1));
         }
      }
      
      public function set g(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§_-2M§ = uint(255 * b2Math.§_-ZK§(param1,0,1));
         }
      }
      
      public function set b(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§_-bk§ = uint(255 * b2Math.§_-ZK§(param1,0,1));
         }
      }
      
      public function get color() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§_-p4§ << 16);
         if(!_loc1_)
         {
            §§push(this.§_-2M§);
            if(!(_loc1_ && _loc1_))
            {
               §§push(§§pop() | §§pop() << 8);
               if(!(_loc1_ && _loc2_))
               {
                  addr54:
                  return §§pop() | this.§_-bk§;
               }
            }
         }
         §§goto(addr54);
      }
   }
}
