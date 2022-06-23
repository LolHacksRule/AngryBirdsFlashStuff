package §`6§
{
   public class §5!;§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §?S§:Number = 0;
      
      protected var native:Number;
      
      protected var §finally§:Boolean = false;
      
      public function §5!;§(param1:int, param2:int, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            if(!(_loc5_ && param1))
            {
               this.mId1 = param1;
               if(_loc5_ && this)
               {
               }
               §§goto(addr67);
            }
            this.mId2 = param2;
            if(_loc4_ || param1)
            {
            }
            §§goto(addr67);
         }
         addr67:
         this.native = Math.floor(param3 * 1000);
      }
      
      public function get id1() : int
      {
         return this.mId1;
      }
      
      public function set id1(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.mId1 = param1;
         }
      }
      
      public function get id2() : int
      {
         return this.mId2;
      }
      
      public function get §8i§() : Boolean
      {
         return this.§finally§;
      }
      
      public function set §8i§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§finally§ = param1;
         }
      }
      
      public function update(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this);
            §§push(this.§?S§);
            if(_loc2_ || _loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§?S§ = §§pop();
            if(_loc2_ || _loc3_)
            {
               addr63:
               if(this.§?S§ >= this.native)
               {
                  if(_loc2_)
                  {
                     addr70:
                     §§push(this.mId2);
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr75:
                     §§push(-1);
                  }
                  return §§pop();
               }
               §§goto(addr75);
            }
            §§goto(addr70);
         }
         §§goto(addr63);
      }
   }
}
