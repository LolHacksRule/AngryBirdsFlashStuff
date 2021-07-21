package §3"5§
{
   public class §8"9§
   {
       
      
      protected var §;"$§:int;
      
      protected var §0!O§:int;
      
      protected var §6#§:Number = 0;
      
      protected var § !W§:Number;
      
      protected var §,P§:Boolean = false;
      
      public function §8"9§(param1:int, param2:int, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.§;"$§ = param1;
               addr60:
               if(!_loc5_)
               {
                  this.§ !W§ = Math.floor(param3 * 1000);
                  addr72:
                  if(_loc5_ && param3)
                  {
                     while(_loc4_ || param3)
                     {
                        §§goto(addr60);
                        §§goto(addr72);
                     }
                     while(true)
                     {
                        this.§0!O§ = param2;
                        §§goto(addr53);
                     }
                     addr53:
                     addr77:
                  }
                  return;
               }
            }
         }
         §§goto(addr77);
      }
      
      public function get §2`§() : int
      {
         return this.§;"$§;
      }
      
      public function set §2`§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§;"$§ = param1;
         }
      }
      
      public function get targetId() : int
      {
         return this.§0!O§;
      }
      
      public function get §]o§() : Boolean
      {
         return this.§,P§;
      }
      
      public function set §]o§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,P§ = param1;
         }
      }
      
      public function update(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this);
            §§push(this.§6#§);
            if(_loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§6#§ = §§pop();
            while(this.§6#§ >= this.§ !W§)
            {
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr62);
               }
               if(!(_loc2_ && _loc3_))
               {
                  addr70:
                  break;
               }
            }
            §§push(-1);
            if(_loc3_ || _loc3_)
            {
               return §§pop();
            }
            addr62:
            return this.§0!O§;
         }
         §§goto(addr70);
      }
   }
}
