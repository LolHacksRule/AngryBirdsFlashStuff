package §%J§
{
   public class §"!%§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §^!,§:Number = 0;
      
      protected var §4!#§:Number;
      
      protected var §+F§:Boolean = false;
      
      public function §"!%§(param1:int, param2:int, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.mId1 = param1;
               while(!(_loc4_ && this))
               {
                  this.mId2 = param2;
                  while(_loc5_ || this)
                  {
                     this.§4!#§ = Math.floor(param3 * 1000);
                     if(_loc4_ && this)
                     {
                        continue;
                     }
                     return;
                     addr49:
                  }
               }
            }
         }
         §§goto(addr49);
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
      
      public function set id2(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mId2 = param1;
         }
      }
      
      public function get § !9§() : Boolean
      {
         return this.§+F§;
      }
      
      public function set § !9§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§+F§ = param1;
         }
      }
      
      public function update(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this);
            §§push(this.§^!,§);
            if(!_loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§^!,§ = §§pop();
            while(this.§^!,§ >= this.§4!#§)
            {
               if(!(_loc2_ && param1))
               {
                  §§goto(addr57);
               }
               if(_loc3_)
               {
                  addr60:
                  break;
               }
            }
            §§push(-1);
            if(!_loc2_)
            {
               return §§pop();
            }
            addr57:
            return this.mId2;
         }
         §§goto(addr60);
      }
   }
}
