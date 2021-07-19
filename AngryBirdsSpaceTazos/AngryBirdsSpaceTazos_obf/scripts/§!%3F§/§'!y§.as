package §!?§
{
   import §"!&§.§8"F§;
   import §`!j§.§2!7§;
   import §`!j§.§9"!§;
   
   public class §'!y§ extends §@"C§
   {
       
      
      protected var §3"4§:§8"F§;
      
      protected var §'"4§:Vector.<String>;
      
      public function §'!y§(param1:§9"!§, param2:§8"F§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§'"4§ = new Vector.<String>();
            while(true)
            {
               this.§3"4§ = param2;
               §§goto(addr61);
            }
         }
         addr61:
         while(true)
         {
            super(param1);
            if(!_loc4_)
            {
               if(_loc3_ || this)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override protected function initializeFile(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = null;
         if(!_loc5_)
         {
            super.initializeFile(param1);
         }
         var _loc2_:Array = param1.match(/^levels\/(.*)\.lua$/i);
         if(!_loc5_)
         {
            if(_loc2_)
            {
               if(_loc6_ || _loc3_)
               {
                  §§push(_loc2_[1].toLowerCase());
                  if(!(_loc5_ && _loc2_))
                  {
                     _loc4_ = §§pop();
                     if(_loc6_ || _loc2_)
                     {
                        addr74:
                        this.initializeLevelLuaFile(_loc4_,param1);
                        addr78:
                        §§push(param1);
                     }
                     §§goto(addr78);
                  }
                  var _loc3_:Array = §§pop().match(/^blocks_(.*)\.lua$/i);
                  if(!_loc5_)
                  {
                     if(_loc3_)
                     {
                        if(!_loc5_)
                        {
                           if(param1.indexOf("levelgoals") < 0)
                           {
                              if(_loc6_ || this)
                              {
                                 addr114:
                                 this.§'"4§.push(§""@§(param1));
                              }
                           }
                        }
                        §§goto(addr114);
                     }
                     return;
                  }
                  §§goto(addr114);
               }
               §§goto(addr74);
            }
         }
         §§goto(addr74);
      }
      
      protected function initializeLevelLuaFile(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§2!7§ = null;
         if(_loc5_)
         {
            if(!§6u§.getLevelForId(param1))
            {
               addr36:
               _loc3_ = §2!7§.§<!P§(§""@§(param2));
               if(_loc5_)
               {
                  _loc3_.name = param1;
                  if(!_loc5_)
                  {
                  }
                  §§goto(addr64);
               }
               §6u§.addLevel(param1,_loc3_);
            }
            addr64:
            return;
         }
         §§goto(addr36);
      }
      
      public function get §=!d§() : int
      {
         return this.§'"4§.length;
      }
      
      public function §,!x§(param1:int) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() >= 0);
               addr77:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc3_)
                        {
                           return this.§'"4§[param1];
                        }
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     return null;
                     addr52:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
            addr75:
         }
         while(true)
         {
            §§push(param1);
            if(_loc3_ || this)
            {
               §§push(§§pop() < this.§'"4§.length);
               if(_loc2_)
               {
                  continue;
               }
               if(!_loc3_)
               {
                  §§goto(addr77);
               }
               §§goto(addr52);
            }
            else
            {
               §§goto(addr75);
            }
         }
      }
      
      public function §7",§() : String
      {
         return §""@§("damagefactors.lua","core");
      }
      
      public function §%3§() : String
      {
         return §""@§("materials.lua","core");
      }
   }
}
