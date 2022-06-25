package §#k§
{
   public class §,r§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §,L§:Number = 0;
      
      protected var §#s§:Number;
      
      protected var §9,§:Boolean = false;
      
      public function §,r§(param1:int, param2:int, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super();
            if(!(_loc4_ && this))
            {
               addr53:
               this.mId1 = param1;
               if(!_loc4_)
               {
                  this.mId2 = param2;
                  if(_loc5_)
                  {
                     addr63:
                     this.§#s§ = Math.floor(param3 * 1000);
                  }
                  return;
               }
            }
            §§goto(addr63);
         }
         §§goto(addr53);
      }
      
      public function get id1() : int
      {
         return this.mId1;
      }
      
      public function set id1(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mId1 = param1;
         }
      }
      
      public function get id2() : int
      {
         return this.mId2;
      }
      
      public function get §8!A§() : Boolean
      {
         return this.§9,§;
      }
      
      public function set §8!A§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§9,§ = param1;
         }
      }
      
      public function update(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.§,L§);
            if(!_loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§,L§ = §§pop();
            if(_loc3_)
            {
               if(this.§,L§ >= this.§#s§)
               {
                  if(!(_loc2_ && this))
                  {
                     addr51:
                     §§push(this.mId2);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr56:
                     §§push(-1);
                  }
                  return §§pop();
               }
               §§goto(addr56);
            }
         }
         §§goto(addr51);
      }
   }
}
