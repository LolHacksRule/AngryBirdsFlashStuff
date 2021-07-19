package §@_§
{
   public class §@!%§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §[c§:Number = 0;
      
      protected var §6!?§:Number;
      
      protected var §+I§:Boolean = false;
      
      public function §@!%§(param1:int, param2:int, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            super();
            if(_loc5_)
            {
               this.mId1 = param1;
               if(_loc5_)
               {
                  addr43:
                  this.mId2 = param2;
                  if(!_loc4_)
                  {
                     this.§6!?§ = Math.floor(param3 * 1000);
                  }
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function get id1() : int
      {
         return this.mId1;
      }
      
      public function set id1(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.mId2 = param1;
         }
      }
      
      public function get §[§() : Boolean
      {
         return this.§+I§;
      }
      
      public function set §[§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§+I§ = param1;
         }
      }
      
      public function update(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§[c§);
            if(_loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§[c§ = §§pop();
            if(_loc2_)
            {
               if(this.§[c§ >= this.§6!?§)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr60:
                     §§push(this.mId2);
                     if(_loc2_ || this)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr70:
                     §§push(-1);
                  }
                  return §§pop();
               }
            }
            §§goto(addr70);
         }
         §§goto(addr60);
      }
   }
}
