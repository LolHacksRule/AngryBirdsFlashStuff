package §7g§
{
   import §-!D§.§4!,§;
   import §0!#§.§-P§;
   import §3a§.§7!+§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §1Q§
   {
      
      public static const §;!<§:int = 60;
      
      public static const §5+§:String = "dummyState";
      
      public static const §`K§:int = 0;
      
      public static const §1!6§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §%!8§:Object = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §1Q§))
         {
            §;!<§ = 60;
            if(_loc1_ || §1Q§)
            {
               §5+§ = "dummyState";
               if(_loc1_)
               {
                  §`K§ = 0;
               }
               §§goto(addr74);
            }
            §1!6§ = 1;
            STATE_STATUS_RUNNING = 2;
            if(_loc1_ || §1Q§)
            {
            }
            §§goto(addr74);
         }
         addr74:
         if(_loc1_)
         {
            §%!8§ = null;
         }
      }
      
      public var §+_§:Boolean = false;
      
      public var §`!L§:Boolean = false;
      
      public var mName:String;
      
      public var §>M§:Boolean = false;
      
      public var §,!A§:Boolean = false;
      
      public var §]F§:§4!,§;
      
      public var §=!"§:Array;
      
      public var mNextState:String = "";
      
      public var §,!7§:Sprite = null;
      
      public var §<1§:§`!8§ = null;
      
      public function §1Q§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         super();
         if(_loc3_)
         {
            this.mName = param2;
            this.§=!"§ = new Array();
            if(!(_loc4_ && this))
            {
               this.§,!7§ = new Sprite();
            }
         }
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §'a§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§%!8§)
            {
               if(_loc3_ || §1Q§)
               {
                  return §%!8§[param1];
               }
            }
         }
         return null;
      }
      
      public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§+_§ = true;
         }
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§4!,§ = null;
         if(_loc5_ || _loc3_)
         {
            if(!this.§+_§)
            {
               if(_loc5_ || _loc3_)
               {
                  this.init();
                  if(_loc5_)
                  {
                     §§goto(addr41);
                  }
               }
               §§goto(addr68);
            }
            addr41:
            §§push(this.§]F§);
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc4_ && this))
                  {
                     addr68:
                     this.§,!7§.addChild(this.§]F§);
                     §§goto(addr78);
                  }
                  §§goto(addr75);
               }
               §§goto(addr78);
            }
            §§pop().§@2§();
            addr78:
            if(!_loc4_)
            {
               addr75:
               §§push(this.§]F§);
            }
            var _loc3_:* = this.§=!"§;
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_ || _loc3_)
               {
                  this.§,!7§.addChild(_loc1_);
                  if(!_loc4_)
                  {
                     _loc1_.§^!§();
                  }
               }
            }
            if(!(_loc4_ && _loc3_))
            {
               this.mNextState = "";
               if(_loc5_)
               {
                  this.§`!L§ = true;
               }
            }
            return;
         }
         §§goto(addr75);
      }
      
      public function §^7§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§4!,§ = null;
         if(_loc5_ || _loc2_)
         {
            §§push(this.§]F§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(_loc5_ || this)
                  {
                     addr41:
                     this.§]F§.§^!§();
                     addr39:
                     if(_loc5_ || _loc2_)
                     {
                     }
                     var _loc3_:* = this.§=!"§;
                     §§goto(addr54);
                  }
                  this.§,!7§.removeChild(this.§]F§);
               }
               addr54:
               for each(_loc1_ in _loc3_)
               {
                  if(_loc5_)
                  {
                     _loc1_.§^!§();
                     if(!_loc4_)
                     {
                        this.§,!7§.removeChild(_loc1_);
                     }
                  }
               }
               if(_loc5_ || _loc1_)
               {
                  §§push(this.§`!L§);
                  if(!_loc4_)
                  {
                     if(!§§pop())
                     {
                        if(_loc5_)
                        {
                           §§push(this.§,!A§);
                           if(_loc5_ || _loc3_)
                           {
                              §§goto(addr124);
                           }
                           addr135:
                           if(this.§,!A§)
                           {
                              if(!(_loc4_ && this))
                              {
                                 this.cleanup();
                              }
                           }
                        }
                        §§goto(addr145);
                     }
                     else
                     {
                        this.§`!L§ = false;
                     }
                     §§goto(addr135);
                  }
                  addr124:
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        this.cleanup();
                     }
                     else
                     {
                        §§goto(addr135);
                     }
                  }
                  return;
               }
               addr145:
               return;
            }
            §§goto(addr41);
         }
         §§goto(addr39);
      }
      
      public function §#!L§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,!A§ = param1;
         }
      }
      
      public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(!this.§+_§)
            {
               if(!_loc2_)
               {
                  return;
               }
            }
            else
            {
               §§push(this.§]F§);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr40:
                        this.§]F§.clear();
                        if(_loc2_ && _loc1_)
                        {
                        }
                        addr61:
                        loop0:
                        while(true)
                        {
                           §§push(this.§=!"§);
                           while(true)
                           {
                              if(§§pop().length > 0)
                              {
                                 §§push(this.§=!"§);
                                 if(_loc1_)
                                 {
                                    (§§pop().pop() as §4!,§).clear();
                                    if(!(_loc1_ || _loc1_))
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 continue;
                              }
                              if(!_loc2_)
                              {
                                 if(this.§`!L§)
                                 {
                                    if(_loc1_ || this)
                                    {
                                       break;
                                    }
                                    §§goto(addr117);
                                 }
                                 addr114:
                                 this.§+_§ = false;
                              }
                              §§goto(addr117);
                           }
                           this.deActivate();
                           if(!(_loc2_ && _loc1_))
                           {
                              §§goto(addr114);
                           }
                           addr117:
                           return;
                        }
                     }
                     this.§]F§ = null;
                  }
                  §§goto(addr61);
               }
               §§goto(addr40);
            }
         }
         §§goto(addr40);
      }
      
      public function run(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§+_§);
         if(!(_loc2_ && param1))
         {
            if(!§§pop())
            {
               if(_loc3_ || _loc3_)
               {
                  §§push(§7!+§);
                  §§push("WARNING: State -> run() method is called when state is not ready: ");
                  if(!(_loc2_ && param1))
                  {
                     §§push(§§pop() + this.mName);
                  }
                  §§pop().log(§§pop());
                  if(!_loc3_)
                  {
                     addr89:
                     §§push(§1!6§);
                     if(!(_loc2_ && this))
                     {
                        return §§pop();
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr99);
               }
               §§push(§`K§);
               if(!(_loc2_ && param1))
               {
                  return §§pop();
               }
            }
            else
            {
               addr80:
               if(!this.§`!L§)
               {
                  §§push(§7!+§);
                  §§push("WARNING: State -> run() method is called when state is not active: ");
                  if(_loc3_)
                  {
                     §§push(§§pop() + this.mName);
                  }
                  §§pop().log(§§pop());
                  §§goto(addr89);
               }
               else
               {
                  §§push(STATE_STATUS_RUNNING);
               }
            }
            addr99:
            return §§pop();
         }
         §§goto(addr80);
      }
      
      public function isGenericState() : Boolean
      {
         return this.§>M§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
      }
      
      public function mouseLeave() : void
      {
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
      }
      
      public function §<!>§(param1:§4!,§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=!"§.push(param1);
         }
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§,!7§.addChildAt(param1,param2);
         }
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,!7§.removeChild(param1);
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§,!7§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§<1§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§push(this.§<1§);
                  }
                  else
                  {
                     §§goto(addr44);
                  }
               }
               §§goto(addr44);
            }
            return §§pop().getAppWidth();
         }
         addr44:
         return 0;
      }
      
      public function getAppHeight() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§<1§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || this)
                  {
                     §§goto(addr47);
                  }
               }
               return 0;
            }
            §§goto(addr47);
         }
         addr47:
         return this.§<1§.getAppHeight();
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§]F§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(this.§]F§);
                     if(_loc3_ || param1)
                     {
                        §§push(param1);
                        if(!(_loc4_ && this))
                        {
                           §§pop().viewWidth = §§pop();
                           §§goto(addr84);
                        }
                        §§pop().viewHeight = §§pop();
                        §§goto(addr84);
                     }
                  }
               }
               §§goto(addr84);
            }
            §§goto(addr82);
         }
         addr84:
         if(_loc3_ || _loc3_)
         {
            addr82:
            §§push(this.§]F§);
            §§push(param2);
         }
      }
      
      public function §"!§() : int
      {
         return §;!<§;
      }
   }
}
