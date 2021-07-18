package §4m§
{
   import §%!0§.§,4§;
   import §+V§.§&!O§;
   import §7t§.§7a§;
   import §7t§.§<^§;
   import §;" §.§5_§;
   import §;" §.§>"0§;
   import flash.display.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   
   public class §9g§ extends EventDispatcher
   {
       
      
      protected var §]B§:String = "";
      
      private var §#I§:Boolean = false;
      
      private var §#!M§:XML;
      
      private var §4"!§:Vector.<§>"0§>;
      
      protected var §4!K§:Boolean = false;
      
      protected var §<!$§:Vector.<§&!O§>;
      
      public function §9g§(param1:§,4§, param2:XML)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         if(!_loc7_)
         {
            this.§4"!§ = new Vector.<§>"0§>();
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  super();
                  loop2:
                  while(param2)
                  {
                     if(_loc6_ || param1)
                     {
                        if(param2.hasOwnProperty("description"))
                        {
                           if(!_loc7_)
                           {
                              continue loop0;
                           }
                           addr52:
                           while(true)
                           {
                              if(!(_loc6_ || param1))
                              {
                                 continue loop2;
                              }
                              if(false)
                              {
                                 continue loop1;
                              }
                           }
                           addr52:
                        }
                        var _loc4_:int = 0;
                        var _loc5_:* = param2.prompt;
                        addr103:
                        for each(_loc3_ in _loc5_)
                        {
                           if(!_loc7_)
                           {
                              this.§4"!§.push(new §>"0§(_loc3_));
                           }
                           §§goto(addr103);
                        }
                        if(!_loc7_)
                        {
                           this.§#!M§ = param2.inventory[0];
                        }
                        this.§?!0§(param1,param2);
                        addr138:
                        if(!_loc6_)
                        {
                           §§goto(addr138);
                        }
                        break;
                     }
                     §§goto(addr52);
                  }
                  return;
               }
            }
         }
         while(true)
         {
            this.§]B§ = param2.description[0].toString();
            §§goto(addr52);
         }
      }
      
      public static function §2!3§(param1:§,4§, param2:XML) : §9g§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = param2["@type"].toString();
         if(!_loc4_)
         {
            if("GhostObject" === _loc3_)
            {
               if(!_loc4_)
               {
                  addr89:
                  §§push(0);
                  if(_loc4_)
                  {
                  }
               }
               else
               {
                  addr98:
                  §§push(1);
                  if(_loc4_ && param1)
                  {
                     addr128:
                  }
               }
            }
            else
            {
               if("Connected" === _loc3_)
               {
                  if(_loc5_)
                  {
                     §§goto(addr98);
                  }
                  addr133:
                  switch(§§pop())
                  {
                     case 0:
                        return new §3g§(param1,param2);
                     case 1:
                        return new §?Y§(param1,param2);
                     case 2:
                        return new §8c§(param1,param2);
                     default:
                        return null;
                  }
               }
               else
               {
                  if("Request" !== _loc3_)
                  {
                     §§goto(addr133);
                     §§push(3);
                  }
                  §§goto(addr133);
               }
               §§push(2);
               if(!(_loc4_ && param1))
               {
                  §§goto(addr128);
               }
            }
            §§goto(addr133);
         }
         §§goto(addr89);
      }
      
      protected function §?!0§(param1:§,4§, param2:XML) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:XML = null;
         var _loc4_:§<^§ = null;
         var _loc5_:§<^§ = null;
         var _loc6_:§7a§ = null;
         if(!(_loc9_ && param1))
         {
            this.§<!$§ = new Vector.<§&!O§>();
         }
         for each(_loc3_ in param2.instruction)
         {
            if(!_loc9_)
            {
               if(_loc3_.hasOwnProperty("block"))
               {
                  if(_loc10_ || param1)
                  {
                     addr78:
                     _loc4_ = new §<^§(param2.instruction.block.toString());
                  }
                  else
                  {
                     addr93:
                     _loc6_ = §5_§.§<!v§(_loc3_.object.toString(),param1.objects);
                     _loc4_ = new §<^§(_loc6_);
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
                     §§goto(addr93);
                  }
               }
               _loc5_ = new §<^§(new Point(_loc3_.x,_loc3_.y));
               if(!_loc9_)
               {
                  this.§<!$§.push(new §&!O§(_loc4_,_loc5_));
               }
               continue;
            }
            §§goto(addr78);
         }
      }
      
      public function get §4q§() : XML
      {
         return this.§#!M§;
      }
      
      public function refresh(param1:§,4§) : void
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
         if(_loc2_)
         {
            §§push(!this.§<!$§);
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr101:
                     while(true)
                     {
                        §§push(this.§<!$§.length == 0);
                     }
                  }
                  addr100:
               }
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        continue;
                     }
                     if(_loc2_ || _loc2_)
                     {
                        if(_loc1_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           continue loop4;
                           addr40:
                           if(_loc2_)
                           {
                              §§push(null);
                              if(_loc2_)
                              {
                                 addr62:
                                 return §§pop();
                              }
                              addr93:
                              return §§pop();
                           }
                        }
                     }
                  }
                  §§goto(addr101);
               }
            }
         }
         §§goto(addr93);
         §§push(null);
      }
      
      public function update(param1:§,4§) : Boolean
      {
         return false;
      }
      
      public function isObjectNeeded(param1:§7a§) : Boolean
      {
         return false;
      }
      
      public function get description() : String
      {
         return this.§]B§;
      }
      
      public function get isCompleted() : Boolean
      {
         return this.§#I§;
      }
      
      public function set isCompleted(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§#I§ = param1;
         }
      }
      
      public function §-!a§() : §>"0§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            return this.§4"!§.length > 0 ? this.§4"!§.shift() : null;
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
