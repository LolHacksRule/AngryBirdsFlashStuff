package §%"$§
{
   import §#R§.§79§;
   import §5!V§.§!w§;
   import §7r§.§,!<§;
   import §7r§.§=q§;
   import §8" §.§2J§;
   import §8" §.§`8§;
   import flash.display.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   
   public class §[!0§ extends EventDispatcher
   {
       
      
      protected var §9!7§:String = "";
      
      private var §9!?§:Boolean = false;
      
      private var §,c§:XML;
      
      private var §>!4§:Vector.<§2J§>;
      
      protected var §0!>§:Boolean = false;
      
      protected var §`!"§:Vector.<§79§>;
      
      public function §[!0§(param1:§!w§, param2:XML)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         if(_loc6_)
         {
            this.§>!4§ = new Vector.<§2J§>();
            while(true)
            {
               addr56:
               while(true)
               {
                  super();
               }
            }
            addr76:
         }
         while(param2)
         {
            if(!_loc7_)
            {
               if(_loc7_ && param1)
               {
                  continue;
               }
               if(param2.hasOwnProperty("description"))
               {
                  if(_loc6_ || param1)
                  {
                     addr45:
                     this.§9!7§ = param2.description[0].toString();
                  }
                  if(_loc6_)
                  {
                     if(true)
                     {
                        addr77:
                        for each(_loc3_ in param2.prompt)
                        {
                           if(!_loc7_)
                           {
                              this.§>!4§.push(new §2J§(_loc3_));
                           }
                        }
                        if(!(_loc7_ && param2))
                        {
                           this.§,c§ = param2.inventory[0];
                        }
                        do
                        {
                           this.§"M§(param1,param2);
                        }
                        while(_loc7_ && param2);
                        
                        break;
                     }
                  }
                  else
                  {
                     §§goto(addr76);
                  }
                  §§goto(addr56);
               }
               §§goto(addr77);
            }
            §§goto(addr45);
         }
      }
      
      public static function §0j§(param1:§!w§, param2:XML) : §[!0§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = param2["@type"].toString();
         if(!(_loc5_ && _loc3_))
         {
            if("GhostObject" === _loc3_)
            {
               if(!_loc5_)
               {
                  §§push(0);
                  if(_loc4_ || param1)
                  {
                  }
               }
               else
               {
                  addr109:
                  §§push(2);
                  if(!_loc4_)
                  {
                  }
               }
               addr127:
               switch(§§pop())
               {
                  case 0:
                     return new §#!p§(param1,param2);
                  case 1:
                     return new §[5§(param1,param2);
                  case 2:
                     return new §+!+§(param1,param2);
                  default:
                     return null;
               }
            }
            else
            {
               if("Connected" === _loc3_)
               {
                  if(!_loc5_)
                  {
                     §§push(1);
                     if(!_loc4_)
                     {
                     }
                  }
                  else
                  {
                     §§goto(addr109);
                  }
               }
               else if("Request" === _loc3_)
               {
                  §§goto(addr109);
               }
               else
               {
                  §§push(3);
               }
               §§goto(addr127);
            }
         }
         §§goto(addr109);
      }
      
      protected function §"M§(param1:§!w§, param2:XML) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:XML = null;
         var _loc4_:§,!<§ = null;
         var _loc5_:§,!<§ = null;
         var _loc6_:§=q§ = null;
         if(_loc10_)
         {
            this.§`!"§ = new Vector.<§79§>();
         }
         for each(_loc3_ in param2.instruction)
         {
            if(_loc10_)
            {
               if(_loc3_.hasOwnProperty("block"))
               {
                  if(_loc10_ || _loc3_)
                  {
                     _loc4_ = new §,!<§(param2.instruction.block.toString());
                  }
               }
               else
               {
                  if(!_loc3_.hasOwnProperty("object"))
                  {
                     throw new Error("Instruction didn\'t specify a proper block or object for the starting point.");
                  }
                  if(!_loc9_)
                  {
                     _loc6_ = §`8§.§"!h§(_loc3_.object.toString(),param1.objects);
                     _loc4_ = new §,!<§(_loc6_);
                  }
               }
            }
            _loc5_ = new §,!<§(new Point(_loc3_.x,_loc3_.y));
            if(_loc10_ || param2)
            {
               this.§`!"§.push(new §79§(_loc4_,_loc5_));
            }
         }
      }
      
      public function get §?g§() : XML
      {
         return this.§,c§;
      }
      
      public function refresh(param1:§!w§) : void
      {
      }
      
      public function getHUDs() : Vector.<DisplayObject>
      {
         return new Vector.<DisplayObject>();
      }
      
      public function getNextInstruction() : DisplayObject
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(!this.§`!"§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr106:
                     while(true)
                     {
                        §§push(this.§`!"§.length == 0);
                        addr78:
                        while(!(_loc1_ && _loc1_))
                        {
                        }
                        continue loop1;
                     }
                  }
               }
               loop4:
               while(!§§pop())
               {
                  while(true)
                  {
                     §§push(this.isCompleted);
                     if(_loc2_)
                     {
                        if(_loc1_)
                        {
                           continue loop0;
                        }
                        if(!§§pop())
                        {
                           §§push(this.§`!"§[0]);
                           break;
                        }
                        if(_loc1_ && _loc2_)
                        {
                           continue;
                        }
                        if(_loc1_)
                        {
                           break loop4;
                        }
                        if(!(_loc1_ && this))
                        {
                           addr59:
                           §§push(null);
                           if(_loc2_)
                           {
                              §§push(§§pop());
                              break;
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr78);
                  }
                  return §§pop();
               }
               addr98:
               return §§pop();
            }
         }
         §§goto(addr59);
      }
      
      public function update(param1:§!w§) : Boolean
      {
         return false;
      }
      
      public function isObjectNeeded(param1:§=q§) : Boolean
      {
         return false;
      }
      
      public function get description() : String
      {
         return this.§9!7§;
      }
      
      public function get isCompleted() : Boolean
      {
         return this.§9!?§;
      }
      
      public function set isCompleted(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§9!?§ = param1;
         }
      }
      
      public function §=!"§() : §2J§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            return this.§>!4§.length > 0 ? this.§>!4§.shift() : null;
         }
         §§goto(addr44);
      }
      
      public function dispose() : void
      {
      }
      
      public function onPhysicsEnabled() : void
      {
      }
   }
}
