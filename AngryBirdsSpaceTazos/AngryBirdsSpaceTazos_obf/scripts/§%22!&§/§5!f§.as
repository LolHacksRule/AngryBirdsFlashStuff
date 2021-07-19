package §"!&§
{
   public class §5!f§ extends §]!C§
   {
       
      
      protected var §%Q§:String;
      
      protected var §!!<§:String;
      
      protected var §[!-§:String;
      
      protected var §"!p§:String;
      
      protected var §7"%§:String;
      
      public function §5!f§(param1:Object, param2:int, param3:§<s§, param4:§=C§, param5:int, param6:Boolean = false, param7:§="D§ = null)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && param1))
         {
            super(param1,param2,param3,param4,param5,param6);
            while(true)
            {
               this.§%Q§ = param1.spriteFreeze;
               loop1:
               while(_loc8_)
               {
                  this.§!!<§ = param1.damageSound;
                  while(true)
                  {
                     this.§[!-§ = param1.collisionSound;
                     addr51:
                     while(_loc8_)
                     {
                        if(!_loc9_)
                        {
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§7"%§ = param1.frozenKilledSound;
            if(_loc8_)
            {
               break;
            }
            §§goto(addr51);
         }
      }
      
      override public function get damageSound() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§!!<§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §§goto(addr58);
                  }
               }
               return §>!i§;
            }
            §§goto(addr58);
         }
         addr58:
         return this.§!!<§;
      }
      
      override public function get collisionSound() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§[!-§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && this))
                  {
                     §§goto(addr58);
                  }
               }
               return §0!N§;
            }
            §§goto(addr58);
         }
         addr58:
         return this.§[!-§;
      }
      
      public function get frozenKilledSound() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§7"%§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(this.§7"%§);
                  }
                  else
                  {
                     §§goto(addr64);
                  }
               }
               §§goto(addr64);
            }
            return §§pop();
         }
         addr64:
         return §'!T§;
      }
      
      public function get §#!a§() : String
      {
         return this.§"!p§;
      }
   }
}
