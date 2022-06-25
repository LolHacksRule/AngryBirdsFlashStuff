package §'!E§
{
   public class §=E§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §with§:Number = 0;
      
      protected var §<E§:Number;
      
      protected var §+g§:Boolean = false;
      
      public function §=E§(param1:int, param2:int, param3:Number)
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
                     this.§<E§ = Math.floor(param3 * 1000);
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
      
      public function get §3d§() : Boolean
      {
         return this.§+g§;
      }
      
      public function set §3d§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§+g§ = param1;
         }
      }
      
      public function update(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.§with§);
            if(!_loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§with§ = §§pop();
            if(_loc3_)
            {
               if(this.§with§ >= this.§<E§)
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
