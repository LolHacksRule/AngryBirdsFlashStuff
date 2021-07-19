package §+]§
{
   import § !r§.Base64;
   import § !r§.§`![§;
   import § !u§.§9y§;
   import §!"§.§!!v§;
   import §#b§.*;
   import §&!m§.§;5§;
   import §-!0§.§0!k§;
   import §-!0§.§2! §;
   import §1!F§.§"![§;
   import §5#§.§?o§;
   import §8!+§.§"!X§;
   import §8!+§.§-!k§;
   import §8!+§.§6!W§;
   import §8!+§.§8!X§;
   import §8!+§.§]p§;
   import §<!<§.*;
   import §<!B§.*;
   import §>!'§.§<!3§;
   import §?!-§.§'!V§;
   import §@!X§.§7j§;
   import §`a§.§ !U§;
   import §`a§.§^7§;
   import flash.display.BitmapData;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.NetStatusEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.SharedObject;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §"U§ extends §?o§
   {
      
      public static const §?!k§:int = 200;
      
      public static const §;W§:int = 1000;
      
      public static const §'e§:int = 8;
      
      public static const §6!7§:int = 0;
      
      public static const §'Z§:int = 1;
      
      public static const §@K§:int = 640;
      
      public static const §^S§:int = 480;
      
      public static const §0r§:Number = 100000;
      
      private static const §@!A§:String = "LastEditedLevel";
      
      private static var §'!5§:Function;
      
      private static var §?!]§:§2! §;
      
      private static var §5!=§:§0!k§;
      
      private static var §8T§:SharedObject;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §;W§ = 1000;
            if(!_loc1_)
            {
               addr37:
               §'e§ = 8;
               §6!7§ = 0;
            }
            §'Z§ = 1;
            §@K§ = 640;
            if(!(_loc1_ && §"U§))
            {
               §^S§ = 480;
               if(_loc2_)
               {
                  §0r§ = 100000;
                  if(_loc1_ && §"U§)
                  {
                  }
                  §§goto(addr84);
               }
               §@!A§ = "LastEditedLevel";
            }
            addr84:
            return;
         }
         §§goto(addr37);
      }
      
      public var §5"§:Vector.<§!!i§>;
      
      public var mMousePositionB2:Point;
      
      public var mMousePosition:Point;
      
      public var §<!c§:Vector.<§;5§>;
      
      public var §9S§:Vector.<Object>;
      
      public var §8J§:Boolean = false;
      
      private var §^"§:Boolean = true;
      
      public var §0L§:Dictionary;
      
      public var mEditorUI:§try§ = null;
      
      private var §3X§:Boolean = false;
      
      private var §^!i§:String = null;
      
      private var §#I§:int = 0;
      
      private var §<!_§:SharedObject = null;
      
      private var §8E§:Boolean = false;
      
      private var §-k§:Function;
      
      private var §5!R§:Class;
      
      private var §5A§:Class;
      
      private var §<!2§:§"U§;
      
      private var §?X§:Dictionary;
      
      private var §`0§:Class;
      
      private var §;!X§:§#!v§;
      
      public function §"U§(param1:§7E§, param2:§try§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         this.mMousePositionB2 = new Point();
         this.mMousePosition = new Point();
         if(!(_loc4_ && this))
         {
            super(param1);
         }
         this.mEditorUI = param2;
         this.§5"§ = new Vector.<§!!i§>();
         this.§<!c§ = new Vector.<§;5§>();
         this.§0L§ = new Dictionary();
      }
      
      public static function getCurrentLevelData() : §2! §
      {
         return §?!]§;
      }
      
      public static function get §=O§() : §0!k§
      {
         return §5!=§;
      }
      
      public static function set §=O§(param1:§0!k§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && §"U§))
         {
            §5!=§ = param1;
         }
      }
      
      public static function §!!d§(param1:Vector.<§;5§>, param2:Number = 0) : Rectangle
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc7_:§;5§ = null;
         var _loc8_:Rectangle = null;
         var _loc3_:* = Number(Number.MAX_VALUE);
         var _loc4_:* = Number(Number.MAX_VALUE);
         §§push(-Number.MAX_VALUE);
         if(_loc11_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(-Number.MAX_VALUE);
         if(!(_loc12_ && §"U§))
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         for each(_loc7_ in param1)
         {
            if((_loc8_ = _loc7_.§]!5§()) == null)
            {
               continue;
            }
            if(_loc8_.x < _loc3_)
            {
               §§push(Number(_loc8_.x));
               if(!_loc12_)
               {
                  _loc3_ = §§pop();
                  if(!_loc11_)
                  {
                     continue;
                  }
                  addr96:
                  if(_loc8_.y < _loc4_)
                  {
                     §§push(Number(_loc8_.y));
                     if(_loc11_)
                     {
                        addr105:
                        _loc4_ = §§pop();
                        addr106:
                        if(_loc8_.x + _loc8_.width > _loc5_)
                        {
                           if(!(_loc12_ && param1))
                           {
                              §§push(Number(_loc8_.x + _loc8_.width));
                              if(!(_loc12_ && param1))
                              {
                                 addr133:
                                 _loc5_ = §§pop();
                                 addr134:
                                 if(_loc8_.y + _loc8_.height <= _loc6_)
                                 {
                                    continue;
                                 }
                                 addr151:
                                 §§push(Number(_loc8_.y + _loc8_.height));
                              }
                              _loc6_ = §§pop();
                              continue;
                           }
                           §§goto(addr151);
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr133);
                  }
                  §§goto(addr106);
               }
               §§goto(addr105);
            }
            §§goto(addr96);
         }
         return new Rectangle(_loc3_ - param2,_loc4_ - param2,_loc5_ - _loc3_ + param2,_loc6_ - _loc4_ + param2);
      }
      
      public static function §4!Z§() : Object
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Object = new Object();
         if(_loc3_ || §"U§)
         {
            _loc1_.data = §?!]§.§%!d§();
            if(!_loc2_)
            {
               addr44:
               _loc1_.valid = §"![§.§?!W§();
            }
            return _loc1_;
         }
         §§goto(addr44);
      }
      
      public static function §#!t§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §'!5§ = param1;
            if(!(_loc3_ && §"U§))
            {
               addr43:
               §7j§.§else§.§[$§ = §18§;
            }
            return;
         }
         §§goto(addr43);
      }
      
      private static function §18§() : BitmapData
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§'!V§.§?!a§());
         if(!(_loc5_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§'!V§.§<x§());
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:BitmapData = new BitmapData(_loc1_,_loc2_,false);
         if(_loc4_)
         {
            §7j§.drawToBitmapData(_loc3_);
            if(!(_loc5_ && _loc3_))
            {
               §§goto(addr72);
            }
            §§goto(addr92);
         }
         addr72:
         if(§'!5§ != null)
         {
            if(!(_loc5_ && _loc3_))
            {
               §'!5§(_loc3_);
               if(_loc4_ || §"U§)
               {
                  addr92:
                  §'!5§ = null;
               }
            }
         }
         return _loc3_;
      }
      
      public static function §4!;§() : §2! §
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var model:§2! § = null;
         try
         {
            if(!§8T§)
            {
               if(_loc3_ || §"U§)
               {
                  §8T§ = SharedObject.getLocal(§35§.§]!<§());
                  if(_loc3_)
                  {
                     addr51:
                     if(§8T§.data[§@!A§] != undefined)
                     {
                        if(!_loc3_)
                        {
                        }
                        addr104:
                        return null;
                        addr90:
                     }
                     §§goto(addr90);
                  }
                  §§push(§§newactivation());
                  if(_loc3_ || _loc1_)
                  {
                     §§pop().§§slot[1] = §2! §.§%!G§(§8T§.data[§@!A§]);
                     if(!_loc4_)
                     {
                        §§push(§§newactivation());
                     }
                     else
                     {
                        §§goto(addr90);
                     }
                  }
                  return §§pop().§§slot[1];
               }
               §§goto(addr90);
            }
            §§goto(addr51);
         }
         catch(e:Error)
         {
         }
         §§goto(addr104);
      }
      
      override public function init() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super.init();
            if(_loc3_ || this)
            {
               this.§<!_§ = this.§ !P§();
               §§push(§`![§);
               §§push("initing level. ");
               if(!(_loc4_ && _loc1_))
               {
                  §§push(§§pop() + this.§<!_§.data.levelId);
                  if(_loc3_)
                  {
                     addr56:
                     §§push(§§pop() + " vs ");
                     if(!(_loc4_ && this))
                     {
                        addr65:
                        §§push(§§pop() + this.§1m§());
                     }
                     §§pop().log(§§pop());
                     §§push(this.§3X§);
                     if(_loc3_ || this)
                     {
                        §§push(Boolean(§§pop()));
                        if(!(_loc4_ && _loc1_))
                        {
                           §§push(§§pop());
                           if(!_loc4_)
                           {
                              if(§§pop())
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr97:
                                    §§pop();
                                    §§push(this.§<!_§.data.undoPoints == null);
                                    if(_loc3_ || this)
                                    {
                                       addr111:
                                       §§push(!§§pop());
                                       if(_loc3_)
                                       {
                                          addr114:
                                          §§push(§§pop() && this.§<!_§.data.levelId == this.§1m§());
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       try
                                       {
                                          this.§9S§ = this.§<!_§.data.undoPoints as Vector.<Object>;
                                          this.§5!K§();
                                          if(_loc3_ || _loc1_)
                                          {
                                             addr186:
                                             §05§(true);
                                             §-n§.objects.setGroundTextureEnabled(false);
                                             if(_loc3_)
                                             {
                                                §-n§.objects.setDamageEnabled(false);
                                                if(!(_loc4_ && this))
                                                {
                                                   this.mEditorUI.§<!1§();
                                                   addr209:
                                                   §^7§.§>!B§(true);
                                                   this.getCamera().§@!a§();
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      this.§-2§(§-n§.getCurrentLevelData());
                                                      this.§?X§ = new Dictionary();
                                                      if(_loc3_)
                                                      {
                                                         this.§?X§[§8!X§] = new §8!X§(this);
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            this.§?X§[§"!X§] = new §"!X§(this);
                                                            addr246:
                                                            if(!_loc4_)
                                                            {
                                                               addr265:
                                                               this.§?X§[§6!W§] = new §6!W§(this);
                                                               if(_loc3_)
                                                               {
                                                                  addr274:
                                                                  this.§?X§[§-!k§] = new §-!k§(this);
                                                                  if(!(_loc4_ && _loc1_))
                                                                  {
                                                                     addr288:
                                                                     this.setTool(§"!X§);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr274);
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr274);
                                                   }
                                                   §§goto(addr265);
                                                }
                                                §§goto(addr274);
                                             }
                                             §§goto(addr288);
                                             addr168:
                                          }
                                          §§goto(addr246);
                                       }
                                       catch(e:Error)
                                       {
                                          var _loc2_:* = e;
                                       }
                                       §§goto(addr168);
                                    }
                                    else if(this.§9S§ == null)
                                    {
                                       this.§9S§ = new Vector.<Object>();
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §§goto(addr186);
                                       }
                                       §§goto(addr209);
                                    }
                                    §§goto(addr186);
                                 }
                                 §§goto(addr111);
                              }
                           }
                           §§goto(addr114);
                        }
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr65);
               }
               §§goto(addr56);
            }
         }
         §§goto(addr97);
      }
      
      public function setTool(param1:Class) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Vector.<§;5§> = null;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§`0§)
            {
               if(!(_loc3_ && _loc2_))
               {
                  _loc2_ = this.§?X§[this.§`0§].getSelectedObjects();
                  if(_loc4_)
                  {
                     this.§?X§[this.§`0§].deActivate();
                     if(!_loc3_)
                     {
                        §§push(_loc2_.length == 0);
                        if(_loc4_)
                        {
                           if(§§pop())
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 addr80:
                                 §§pop();
                                 addr92:
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr88:
                                    §§push(param1 == §6!W§);
                                 }
                                 param1 = §"!X§;
                                 this.§`0§ = param1;
                                 if(_loc4_)
                                 {
                                    if(this.§`0§ == §6!W§)
                                    {
                                       if(_loc4_ || param1)
                                       {
                                          addr121:
                                          this.§?X§[this.§`0§].setSelection(_loc2_);
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             addr135:
                                             this.§?X§[this.§`0§].activate();
                                          }
                                       }
                                       return;
                                    }
                                 }
                                 §§goto(addr135);
                              }
                           }
                           if(!§§pop())
                           {
                           }
                           §§goto(addr92);
                        }
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr88);
               }
               §§goto(addr135);
            }
            §§goto(addr80);
         }
         §§goto(addr121);
      }
      
      public function getCurrentTool() : §]p§
      {
         return this.§?X§[this.§`0§];
      }
      
      public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§5!K§();
         }
      }
      
      public function § !P§() : SharedObject
      {
         return SharedObject.getLocal("angry-birds-level-editor-cache");
      }
      
      public function §1m§() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = "";
         if(!_loc2_)
         {
            §§push(§5!=§);
            if(_loc3_)
            {
               if(§§pop() != null)
               {
               }
               §§goto(addr56);
            }
            §§push(§§pop().id);
            if(_loc3_)
            {
               §§push(§§pop());
               if(_loc3_ || _loc1_)
               {
                  _loc1_ = §§pop();
                  §§goto(addr56);
               }
            }
            §§goto(addr56);
         }
         addr56:
         if(!(_loc2_ && _loc2_))
         {
            §§push(§5!=§);
         }
         return _loc1_;
      }
      
      override public function update(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(!(_loc5_ && this))
         {
            this.§'!T§();
         }
         §§push(this.§8J§);
         if(_loc4_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            §-n§.update(param1,_loc2_,false);
            if(!_loc5_)
            {
               if(this.mMousePosition != null)
               {
                  if(_loc4_)
                  {
                     addr74:
                     _loc3_ = §-n§.screenToBox2D(this.mMousePosition.x,this.mMousePosition.y);
                     if(_loc4_)
                     {
                        this.mMousePositionB2.x = _loc3_.x;
                        if(_loc4_)
                        {
                           this.mMousePositionB2.y = _loc3_.y;
                        }
                     }
                  }
                  §§goto(addr102);
               }
               this.getCurrentTool().update(param1);
            }
            addr102:
            return;
         }
         §§goto(addr74);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§8J§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     return;
                  }
                  addr117:
                  this.§5!R§ = this.§`0§;
                  if(!_loc2_)
                  {
                     this.setTool(§-!k§);
                  }
               }
               else
               {
                  §§push(param1.keyCode == 90);
                  if(!(_loc2_ && this))
                  {
                     addr43:
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           §§pop();
                           §§push(this.§8J§);
                           if(_loc3_ || param1)
                           {
                              addr67:
                              §§push(!§§pop());
                           }
                        }
                     }
                     if(§§pop())
                     {
                        this.addAction(this.§1Y§);
                     }
                     else if(param1.keyCode == Keyboard.D)
                     {
                        if(!_loc2_)
                        {
                           this.§]!G§();
                        }
                     }
                     else if(param1.keyCode == Keyboard.SPACE)
                     {
                        if(!(_loc2_ && this))
                        {
                           addr106:
                           if(this.§`0§ != §-!k§)
                           {
                              if(_loc3_ || param1)
                              {
                                 §§goto(addr117);
                              }
                           }
                        }
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr67);
               }
               addr126:
               this.getCurrentTool().onKeyDown(param1.keyCode);
               return;
            }
            §§goto(addr43);
         }
         §§goto(addr106);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1.keyCode == Keyboard.SPACE)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr41:
                  if(this.§5!R§ != null)
                  {
                     if(_loc3_ || this)
                     {
                        this.setTool(this.§5!R§);
                        if(!(_loc2_ && param1))
                        {
                           addr73:
                           this.§5!R§ = null;
                           if(_loc3_)
                           {
                              addr78:
                              this.getCurrentTool().onKeyUp(param1.keyCode);
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr78);
               }
               §§goto(addr73);
            }
            §§goto(addr78);
         }
         §§goto(addr41);
      }
      
      public function §]k§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§?!k§ - this.getBlockCount());
         if(_loc2_)
         {
            §§push(§§pop() - this.getPigCount());
         }
         return §§pop();
      }
      
      public function §"%§() : int
      {
         return §;W§ - this.getStaticCount();
      }
      
      public function §?v§() : int
      {
         return §'e§ - §-n§.slingshot.getBirdCount();
      }
      
      public function §^!3§() : Vector.<§]K§>
      {
         return §-n§.slingshot.mBirds;
      }
      
      public function getPigCount() : int
      {
         return §-n§.objects.getPigCount();
      }
      
      public function getBlockCount() : int
      {
         return §-n§.levelObjects.getBlockCount();
      }
      
      public function getStaticCount() : int
      {
         return §-n§.levelObjects.getStaticCount();
      }
      
      public function §'!o§() : §<!3§
      {
         return §-n§.objects.getObject(0);
      }
      
      public function get §,W§() : Boolean
      {
         return this.§^"§;
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.getCurrentTool().onMouseDown();
         }
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.getCurrentTool().onMouseUp();
         }
      }
      
      public function §4_§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.getCurrentTool());
            if(_loc1_)
            {
               §§push(§§pop() is §"!X§);
               if(!(_loc2_ && this))
               {
                  if(§§pop())
                  {
                     if(_loc1_ || _loc2_)
                     {
                        addr65:
                        §§pop();
                        §§push((this.getCurrentTool() as §"!X§).§4_§());
                        if(_loc1_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                     }
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr65);
      }
      
      public function §4h§() : Boolean
      {
         return this.getCurrentTool() is §6!W§;
      }
      
      public function §2=§() : Boolean
      {
         return this.getCurrentTool() is §-!k§;
      }
      
      public function isDragging() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.getCurrentTool());
            if(_loc1_)
            {
               §§push(§§pop() is §"!X§);
               if(_loc1_)
               {
                  if(!§§pop())
                  {
                     if(_loc1_ || _loc1_)
                     {
                        §§push(false);
                        if(_loc1_ || _loc1_)
                        {
                           §§goto(addr52);
                        }
                     }
                     else
                     {
                        addr53:
                        §§push((this.getCurrentTool() as §"!X§).isDragging());
                     }
                     return §§pop();
                  }
                  §§goto(addr53);
               }
               addr52:
               return §§pop();
            }
         }
         §§goto(addr53);
      }
      
      public function §0!O§() : Boolean
      {
         return this.§8J§;
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            if(this.mMousePosition == null)
            {
               if(!_loc3_)
               {
                  this.mMousePosition = new Point(param1,param2);
                  if(!_loc3_)
                  {
                     addr58:
                  }
               }
               addr71:
               this.getCurrentTool().onMouseMove();
            }
            else
            {
               this.mMousePosition.setTo(param1,param2);
               if(_loc4_ || param1)
               {
                  §§goto(addr71);
               }
            }
            return;
         }
         §§goto(addr58);
      }
      
      public function getObjectFromCoordinate(param1:Point) : Object
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Point = §-n§.screenToBox2D(param1.x,param1.y);
         var _loc3_:Object = §-n§.objects.getObjectFromPoint(_loc2_.x,_loc2_.y);
         if(!(_loc5_ && this))
         {
            if(_loc3_ == null)
            {
               _loc3_ = §-n§.slingshot.getObjectFromPoint(_loc2_.x,_loc2_.y);
            }
            §§push(_loc3_ == null);
            if(_loc4_)
            {
               §§push(§§pop());
               if(_loc4_ || this)
               {
                  if(§§pop())
                  {
                     if(_loc4_ || _loc2_)
                     {
                        §§pop();
                        §§push(Boolean(§-n§.slingshot.intersectsWithPoint(_loc2_.x,_loc2_.y)));
                        if(!_loc5_)
                        {
                           addr104:
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 _loc3_ = §-n§.slingshot;
                                 addr111:
                                 §§push(_loc3_ is §<!3§);
                                 if(_loc3_ is §<!3§)
                                 {
                                    addr116:
                                    §§pop();
                                    addr122:
                                    if((_loc3_ as §<!3§).isGround())
                                    {
                                       return null;
                                    }
                                 }
                                 §§goto(addr122);
                              }
                              return _loc3_;
                           }
                           §§goto(addr111);
                        }
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr104);
               }
               §§goto(addr111);
            }
            §§goto(addr104);
         }
         §§goto(addr116);
      }
      
      public function get §-!@§() : int
      {
         return this.getCurrentTool().§",§();
      }
      
      public function §^?§(param1:Boolean, param2:§;5§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            param2.§+!D§(param1);
         }
      }
      
      private function §]!G§() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:§;5§ = null;
         var _loc5_:§;5§ = null;
         var _loc6_:§;5§ = null;
         var _loc1_:Vector.<§;5§> = new Vector.<§;5§>();
         for each(_loc2_ in this.getSelectedObjects())
         {
            if(_loc9_ || _loc2_)
            {
               _loc1_.push(_loc2_);
            }
         }
         if(_loc9_ || this)
         {
            if(_loc1_.length == 0)
            {
               if(!_loc10_)
               {
                  return;
               }
            }
            this.§if §();
         }
         §§push(this.mMousePositionB2.x - _loc1_[0].getPosition().x);
         if(_loc9_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.mMousePositionB2.y - _loc1_[0].getPosition().y);
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc10_)
         {
            var _loc7_:int = 0;
            if(!(_loc10_ && _loc2_))
            {
               for each(_loc5_ in _loc1_)
               {
                  §§push(Boolean(_loc5_.isTexture()));
                  §§push(Boolean(_loc5_.isTexture()));
                  if(!_loc10_)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        if(!(_loc10_ && _loc1_))
                        {
                           §§push(this.§"%§());
                           if(_loc9_ || _loc3_)
                           {
                              §§push(1);
                              if(!_loc10_)
                              {
                                 §§push(§§pop() < §§pop());
                                 if(!_loc10_)
                                 {
                                    addr168:
                                    if(§§pop())
                                    {
                                       if(_loc10_)
                                       {
                                          addr230:
                                          §§push(_loc5_.§%P§());
                                          if(!(_loc10_ && _loc1_))
                                          {
                                             addr239:
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!(§§pop() && this.§]k§() < 1))
                                          {
                                             _loc6_ = _loc5_.clone(§-n§,_loc3_,_loc4_);
                                             if(_loc9_ || _loc2_)
                                             {
                                                this.getCurrentTool().§;;§(_loc6_,true);
                                             }
                                          }
                                          else
                                          {
                                             addr248:
                                          }
                                       }
                                       continue;
                                    }
                                    §§push(Boolean(_loc5_.§;L§()));
                                    if(_loc9_)
                                    {
                                       §§push(§§pop());
                                       if(_loc9_)
                                       {
                                          addr181:
                                          if(§§pop())
                                          {
                                             if(_loc9_)
                                             {
                                                §§pop();
                                                addr185:
                                                §§push(this.§?v§());
                                                if(_loc9_ || _loc2_)
                                                {
                                                   addr194:
                                                   §§push(1);
                                                   if(_loc9_ || _loc1_)
                                                   {
                                                      addr203:
                                                      if(§§pop() < §§pop())
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc5_.§<P§())
                                                      {
                                                         if(!(_loc10_ && _loc1_))
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc5_.§;!Z§());
                                                         if(!_loc10_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(_loc9_)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc9_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     addr229:
                                                                     §§pop();
                                                                  }
                                                               }
                                                               §§goto(addr230);
                                                            }
                                                            §§goto(addr242);
                                                         }
                                                         §§goto(addr229);
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                }
                                                §§goto(addr242);
                                             }
                                             §§goto(addr229);
                                          }
                                          §§goto(addr203);
                                       }
                                       §§goto(addr230);
                                    }
                                    §§goto(addr242);
                                 }
                                 §§goto(addr239);
                              }
                              §§goto(addr203);
                           }
                           §§goto(addr194);
                        }
                        §§goto(addr185);
                     }
                     §§goto(addr168);
                  }
                  §§goto(addr181);
               }
            }
            if(_loc9_)
            {
               this.calculateCurrentScoreLimits();
               if(!_loc9_)
               {
               }
               §§goto(addr300);
            }
            (this.getCurrentTool() as §"!X§).§6=§();
            if(_loc10_ && _loc1_)
            {
            }
            §§goto(addr300);
         }
         addr300:
         this.mEditorUI.§!!1§();
      }
      
      public function copyObjectsToClipboard() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Object = null;
         do
         {
            if(this.§<!c§.length <= 0)
            {
               if(!(_loc5_ && _loc2_))
               {
                  var _loc2_:int = 0;
                  if(!(_loc5_ && _loc1_))
                  {
                     for each(_loc1_ in this.getCurrentTool().getSelectedObjects())
                     {
                        if(!_loc5_)
                        {
                           this.§<!c§.push(_loc1_);
                        }
                     }
                  }
                  break;
               }
               break;
            }
            this.§<!c§.pop();
         }
         while(_loc4_ || _loc2_);
         
      }
      
      public function pasteSelectedObjectsIntoLevel() : Vector.<§;5§>
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:§;5§ = null;
         var _loc7_:§;5§ = null;
         var _loc1_:Vector.<§;5§> = new Vector.<§;5§>();
         if(_loc10_ || _loc3_)
         {
            if(this.§<!c§.length == 0)
            {
               if(_loc10_ || _loc1_)
               {
                  return _loc1_;
               }
            }
            else
            {
               this.§]! §();
            }
         }
         var _loc2_:Rectangle = §!!d§(this.§<!c§);
         var _loc3_:Point = new Point(_loc2_.x + _loc2_.width / 2,_loc2_.y + _loc2_.height / 2);
         §§push(this.mMousePositionB2.x - _loc3_.x);
         if(_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.mMousePositionB2.y - _loc3_.y);
         if(!(_loc11_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         for each(_loc6_ in this.§<!c§)
         {
            §§push(_loc6_.isTexture());
            if(!_loc11_)
            {
               §§push(Boolean(§§pop()));
               §§push(Boolean(§§pop()));
               if(_loc10_)
               {
                  if(§§pop())
                  {
                     if(_loc10_)
                     {
                        §§pop();
                        §§push(this.§"%§());
                        if(_loc10_)
                        {
                           §§push(1);
                           if(!(_loc11_ && _loc2_))
                           {
                              §§push(§§pop() < §§pop());
                              if(_loc10_ || _loc3_)
                              {
                                 addr162:
                                 if(§§pop())
                                 {
                                    if(!_loc11_)
                                    {
                                       continue;
                                    }
                                 }
                                 else
                                 {
                                    §§push(Boolean(_loc6_.§;L§()));
                                    if(!(_loc11_ && _loc2_))
                                    {
                                       §§push(§§pop());
                                       if(_loc10_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc10_ || _loc2_)
                                             {
                                                addr188:
                                                §§pop();
                                                §§push(this.§?v§());
                                                if(!(_loc11_ && this))
                                                {
                                                   §§push(1);
                                                   if(!_loc11_)
                                                   {
                                                      §§push(§§pop() < §§pop());
                                                      if(!_loc11_)
                                                      {
                                                         addr204:
                                                         if(§§pop())
                                                         {
                                                            continue;
                                                         }
                                                         §§push(_loc6_.§<P§());
                                                         if(!_loc11_)
                                                         {
                                                            addr211:
                                                            if(!§§pop())
                                                            {
                                                               §§push(_loc6_.§;!Z§());
                                                               if(_loc10_ || _loc2_)
                                                               {
                                                                  addr223:
                                                                  §§push(Boolean(§§pop()));
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!(_loc11_ && this))
                                                                  {
                                                                     addr232:
                                                                     if(!§§pop())
                                                                     {
                                                                        §§pop();
                                                                        addr237:
                                                                        §§push(Boolean(_loc6_.§%P§()));
                                                                        if(Boolean(_loc6_.§%P§()))
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              §§pop();
                                                                              addr255:
                                                                              §§push(this.§]k§() < 1);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr237);
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  _loc7_ = _loc6_.clone(§-n§,_loc4_,_loc5_);
                                                                  if(_loc10_ || _loc3_)
                                                                  {
                                                                     _loc1_.push(_loc7_);
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr212:
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr223);
                                                      }
                                                      §§goto(addr237);
                                                   }
                                                }
                                                §§goto(addr255);
                                             }
                                             §§goto(addr211);
                                          }
                                          §§goto(addr204);
                                       }
                                       §§goto(addr237);
                                    }
                                    §§goto(addr188);
                                 }
                                 §§goto(addr212);
                              }
                              §§goto(addr223);
                           }
                        }
                        §§goto(addr255);
                     }
                     §§goto(addr204);
                  }
                  §§goto(addr162);
               }
               §§goto(addr232);
            }
            §§goto(addr223);
         }
         return _loc1_;
      }
      
      public function §]! §() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§8J§)
            {
               if(!(_loc1_ && _loc1_))
               {
                  return;
               }
            }
            else
            {
               if(this.§9S§ == null)
               {
                  if(!_loc1_)
                  {
                     addr61:
                     this.§9S§ = new Vector.<Object>();
                     if(_loc2_ || _loc1_)
                     {
                        addr74:
                        this.§9'§();
                        if(!_loc1_)
                        {
                           addr78:
                           this.calculateCurrentScoreLimits();
                        }
                     }
                     this.§9S§.push(getCurrentLevelData().§4!E§());
                     §§goto(addr86);
                  }
                  §§goto(addr78);
               }
               §§goto(addr74);
            }
            addr86:
            return;
         }
         §§goto(addr61);
      }
      
      public function §0!K§(param1:NetStatusEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(param1.info.code == "SharedObject.Flush.Failed")
            {
               if(_loc2_ || _loc2_)
               {
                  this.§3X§ = false;
                  if(!_loc3_)
                  {
                     addr50:
                     this.§<!_§.removeEventListener(NetStatusEvent.NET_STATUS,this.§0!K§);
                  }
               }
               return;
            }
         }
         §§goto(addr50);
      }
      
      public function getCamera() : §^7§
      {
         return §-n§.camera as §^7§;
      }
      
      public function §5!K§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§2! § = §2! §.§%!G§(this.§9S§[this.§9S§.length - 1] as String);
         if(_loc2_)
         {
            this.§-2§(_loc1_);
            if(!_loc3_)
            {
               this.§9'§();
               if(_loc2_ || _loc1_)
               {
                  addr55:
                  addEventListeners();
               }
               return;
            }
         }
         §§goto(addr55);
      }
      
      public function §1Y§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§9S§ == null);
         if(_loc2_)
         {
            §§push(!§§pop());
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || param1)
                  {
                     addr34:
                     §§pop();
                     §§push(this.§9S§.length > 0);
                     if(_loc2_ || _loc2_)
                     {
                        §§goto(addr47);
                     }
                  }
                  §§goto(addr118);
               }
            }
            addr47:
            if(§§pop())
            {
               if(!_loc3_)
               {
                  this.§if §();
                  if(_loc2_ || this)
                  {
                     §§push(this.getCamera());
                     if(_loc2_ || _loc3_)
                     {
                        §§pop().§ !C§();
                        if(!_loc3_)
                        {
                           addr81:
                           this.§5!K§();
                           addr83:
                           §§push(this.getCamera());
                        }
                        §§goto(addr83);
                     }
                     §§pop().§@!a§();
                     if(!_loc3_)
                     {
                        this.§9S§.pop();
                        if(!(_loc3_ && _loc2_))
                        {
                           this.§1#§();
                           if(!(_loc3_ && _loc3_))
                           {
                              addr118:
                              if(param1)
                              {
                                 if(_loc3_)
                                 {
                                 }
                              }
                              §§goto(addr125);
                           }
                        }
                        this.mEditorUI.§[!t§(true);
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr83);
               }
               §§goto(addr81);
            }
            addr125:
            return;
         }
         §§goto(addr34);
      }
      
      public function §if §() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§]p§ = null;
         for each(_loc1_ in this.§?X§)
         {
            if(_loc5_)
            {
               _loc1_.clearSelection();
            }
         }
      }
      
      public function §5!L§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§-k§ = param1;
            if(_loc3_ || _loc3_)
            {
               §7j§.§else§.§[$§ = this.§!!L§;
            }
         }
      }
      
      public function §9'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §?!]§ = §-n§.getCurrentLevelData();
         }
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.getCurrentTool().onMouseWheel(param1.delta);
            if(_loc3_)
            {
               this.mEditorUI.§<!1§();
            }
         }
      }
      
      public function §[L§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.getCamera().goToBirdView();
         }
      }
      
      public function §6D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.getCamera().goToCastleView();
         }
      }
      
      public function §7!v§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.getCamera().§8!B§);
         if(!_loc2_)
         {
            §§push(§ !U§.SCREEN_HEIGHT_B2);
            if(_loc1_ || _loc1_)
            {
               §§goto(addr49);
            }
            §§goto(addr44);
         }
         addr49:
         §§push(§§pop() * 0.5);
         if(!_loc2_)
         {
            addr44:
            §§push(§§pop() / this.getCamera().§3!p§);
         }
         return §§pop() - §§pop() > §-n§.slingshot.mX;
      }
      
      public function §?y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(!this.§8J§)
            {
               this.§5A§ = this.§`0§;
               if(_loc2_)
               {
                  if(this.§5A§ == §8!X§)
                  {
                     if(_loc2_)
                     {
                        this.§5A§ = §"!X§;
                     }
                     §§goto(addr60);
                  }
                  this.setTool(§-!k§);
                  §-n§.slingshot.groundSlingshot();
                  if(_loc2_)
                  {
                     §§goto(addr60);
                  }
                  addr60:
                  this.§]! §();
                  §§goto(addr94);
               }
               addr94:
               §§push(this);
               §§push(this.§8J§);
               if(_loc2_)
               {
                  §§push(!§§pop());
               }
               §§pop().§8J§ = §§pop();
               return;
            }
            this.§1Y§(false);
            if(_loc2_ || _loc1_)
            {
               this.setTool(this.§5A§);
               if(_loc2_)
               {
                  addr89:
                  this.§5A§ = null;
                  if(!_loc2_)
                  {
                  }
               }
               §§goto(addr60);
            }
            §§goto(addr89);
         }
         §§goto(addr60);
      }
      
      public function §1+§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1;
         if(_loc4_ || _loc3_)
         {
            §§push("ACTION_UNDO");
            §§push(_loc2_);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop() === §§pop())
               {
                  §§push(!!_loc4_ ? 0 : 1);
               }
               else
               {
                  §§push("TOGGLE_SNAP");
                  if(!_loc3_)
                  {
                     §§push(_loc2_);
                     if(!_loc3_)
                     {
                        if(§§pop() === §§pop())
                        {
                           §§goto(addr153);
                        }
                        else
                        {
                           if("TOOL_SELECT" === _loc2_)
                           {
                              §§goto(addr291);
                           }
                           else
                           {
                              addr162:
                              if("TOOL_CAMERA" === _loc2_)
                              {
                                 §§push(3);
                                 if(_loc3_ && this)
                                 {
                                 }
                                 §§goto(addr291);
                              }
                              else
                              {
                                 §§push("START_ROTATE");
                                 if(_loc4_)
                                 {
                                    §§push(_loc2_);
                                    if(!_loc3_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc4_)
                                          {
                                             §§push(4);
                                             if(_loc4_ || param1)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr273:
                                             §§push(8);
                                             if(!(_loc3_ && param1))
                                             {
                                                addr281:
                                             }
                                          }
                                          §§goto(addr291);
                                       }
                                       else
                                       {
                                          §§push("SET_MATERIAL_STONE");
                                          if(!(_loc3_ && param1))
                                          {
                                             if(§§pop() === _loc2_)
                                             {
                                                §§push(5);
                                                if(_loc3_ && param1)
                                                {
                                                }
                                                §§goto(addr291);
                                             }
                                             else
                                             {
                                                §§push("SET_MATERIAL_WOOD");
                                                §§push(_loc2_);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   addr218:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         addr221:
                                                         §§push(6);
                                                         if(_loc3_ && _loc3_)
                                                         {
                                                         }
                                                         §§goto(addr291);
                                                      }
                                                      else
                                                      {
                                                         addr247:
                                                         §§push(7);
                                                         if(_loc4_)
                                                         {
                                                            §§goto(addr291);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr281);
                                                         }
                                                      }
                                                      §§goto(addr291);
                                                   }
                                                   else
                                                   {
                                                      §§push("SET_MATERIAL_ICE");
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         addr238:
                                                         §§push(_loc2_);
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            addr246:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               §§goto(addr247);
                                                            }
                                                            else
                                                            {
                                                               §§push("DUPLICATE");
                                                               if(_loc3_ && _loc3_)
                                                               {
                                                               }
                                                               addr284:
                                                               if(§§pop() === _loc2_)
                                                               {
                                                                  addr285:
                                                                  addr291:
                                                                  switch(2)
                                                                  {
                                                                     case 0:
                                                                        this.addAction(this.§1Y§);
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr56:
                                                                        break;
                                                                     case 1:
                                                                        §§push(this);
                                                                        §§push(this.§^"§);
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(!§§pop());
                                                                        }
                                                                        §§pop().§^"§ = §§pop();
                                                                        break;
                                                                     case 2:
                                                                        this.setTool(§"!X§);
                                                                        break;
                                                                     case 3:
                                                                        this.setTool(§-!k§);
                                                                        if(!(_loc4_ || param1))
                                                                        {
                                                                           addr98:
                                                                           break;
                                                                        }
                                                                        §§goto(addr56);
                                                                        break;
                                                                     case 4:
                                                                        this.setTool(§6!W§);
                                                                        if(_loc4_ || param1)
                                                                        {
                                                                           break;
                                                                        }
                                                                        break;
                                                                     case 5:
                                                                        this.addAction(this.§"J§,"Material_Block_Stone");
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           break;
                                                                        }
                                                                        break;
                                                                     case 6:
                                                                        this.addAction(this.§"J§,"Material_Block_Wood");
                                                                        break;
                                                                     case 7:
                                                                        this.addAction(this.§"J§,"Material_Block_Ice");
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr110:
                                                                           break;
                                                                        }
                                                                        §§goto(addr98);
                                                                        break;
                                                                     case 8:
                                                                        this.addAction(this.§]!G§);
                                                                        break;
                                                                     case 9:
                                                                        this.addAction(this.deleteSelectedObjectsFromLevel);
                                                                        §§goto(addr110);
                                                                  }
                                                                  return;
                                                                  §§push(9);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr291);
                                                                  §§push(10);
                                                               }
                                                               §§goto(addr291);
                                                            }
                                                         }
                                                         §§goto(addr284);
                                                      }
                                                      if(§§pop() === _loc2_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            §§goto(addr273);
                                                         }
                                                         §§goto(addr291);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr284);
                                                         §§push("TOOL_DELETE");
                                                      }
                                                      §§goto(addr285);
                                                   }
                                                }
                                                §§goto(addr246);
                                             }
                                          }
                                          §§goto(addr238);
                                       }
                                    }
                                    §§goto(addr284);
                                 }
                                 §§goto(addr238);
                              }
                           }
                           §§goto(addr291);
                        }
                     }
                     §§goto(addr218);
                  }
                  §§goto(addr284);
               }
               §§goto(addr291);
            }
            §§goto(addr162);
         }
         §§goto(addr221);
      }
      
      public function deleteSelectedObjectsFromLevel() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§;5§ = null;
         if(!_loc4_)
         {
            if(this.getCurrentTool().getSelectedObjects().length > 0)
            {
               if(!(_loc4_ && _loc2_))
               {
                  this.§]! §();
                  addr37:
                  for each(_loc1_ in this.getCurrentTool().getSelectedObjects())
                  {
                     if(_loc5_)
                     {
                        §§push(_loc1_.getObject() is §<!3§);
                        if(!_loc4_)
                        {
                           if(§§pop())
                           {
                              if(_loc4_ && this)
                              {
                                 continue;
                              }
                              §-n§.objects.removeObject(_loc1_.getObject() as §<!3§);
                              if(_loc5_)
                              {
                                 addr86:
                                 continue;
                              }
                           }
                           else
                           {
                              addr91:
                              if(!(_loc1_.getObject() is §]K§))
                              {
                                 continue;
                              }
                              if(!_loc5_)
                              {
                                 continue;
                              }
                           }
                           §-n§.slingshot.removeObject(_loc1_.getObject() as §]K§);
                           continue;
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr86);
                  }
                  if(!_loc4_)
                  {
                     this.mEditorUI.§[!t§(true);
                     if(!_loc4_)
                     {
                        this.§if §();
                        if(_loc5_ || _loc1_)
                        {
                        }
                        §§goto(addr134);
                     }
                     this.calculateCurrentScoreLimits();
                  }
               }
               §§goto(addr37);
            }
            addr134:
            return;
         }
         §§goto(addr37);
      }
      
      public function addAction(param1:Function, param2:Object = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§5"§.push(new §!!i§(param1,param2));
         }
      }
      
      private function §'!T§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§!!i§ = null;
         for each(_loc1_ in this.§5"§)
         {
            if(_loc5_)
            {
               _loc1_.execute();
            }
         }
         if(_loc5_)
         {
            this.§5"§ = new Vector.<§!!i§>();
         }
      }
      
      private function §1#§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.calculateCurrentScoreLimits();
         }
      }
      
      public function getOriginalTransformForObject(param1:§;5§) : b2Transform
      {
         return this.§0L§[param1];
      }
      
      public function storeTransformationForObject(param1:§;5§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§0L§[param1] = param1.§!0§();
         }
      }
      
      public function addItem(param1:String) : Object
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1);
            if(!(_loc4_ && _loc2_))
            {
               §§push("BIRD_");
               if(_loc3_)
               {
                  if(§§pop().indexOf(§§pop()) != -1)
                  {
                     if(!_loc4_)
                     {
                        §§push(this.§?v§());
                        if(!_loc4_)
                        {
                           §§push(0);
                           if(_loc3_ || param1)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    addr49:
                                    §`![§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Bird Limit");
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       §§push(null);
                                       if(!(_loc4_ && param1))
                                       {
                                          return §§pop();
                                       }
                                    }
                                    else
                                    {
                                       addr136:
                                       §§push(null);
                                       if(!_loc3_)
                                       {
                                          §§goto(addr141);
                                       }
                                    }
                                    §§goto(addr139);
                                 }
                                 else
                                 {
                                    addr140:
                                    §§push(null);
                                    addr121:
                                 }
                                 §§goto(addr141);
                              }
                              else
                              {
                                 §§goto(addr140);
                              }
                           }
                           else
                           {
                              addr101:
                              if(§§pop() <= §§pop())
                              {
                                 if(_loc3_ || this)
                                 {
                                    §`![§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Static Limit");
                                 }
                                 §§push(null);
                                 if(_loc3_ || param1)
                                 {
                                    return §§pop();
                                 }
                                 addr139:
                                 return §§pop();
                              }
                           }
                           §§goto(addr121);
                        }
                        else
                        {
                           addr125:
                           if(§§pop() <= 0)
                           {
                              §`![§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Block Limit");
                              if(_loc3_ || this)
                              {
                                 §§goto(addr136);
                              }
                              else
                              {
                                 §§goto(addr140);
                              }
                              var _loc2_:Object = §-n§.slingshot.addNewBirdToEndOfList(param1,this.mMousePositionB2.x,this.mMousePositionB2.y);
                              if(!(_loc4_ && _loc3_))
                              {
                                 addr193:
                                 if(_loc2_ != null)
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       this.storeTransformationForObject(§;5§.§9!6§(_loc2_));
                                    }
                                 }
                              }
                              return _loc2_;
                           }
                        }
                     }
                     §§goto(addr140);
                  }
                  else
                  {
                     addr71:
                     if(param1.indexOf("TERRAIN_") == 0)
                     {
                        §§push(this.§"%§());
                        if(_loc3_ || this)
                        {
                           §§push(0);
                           if(!(_loc4_ && _loc3_))
                           {
                              §§goto(addr101);
                           }
                           else
                           {
                              §§goto(addr125);
                           }
                        }
                        else
                        {
                           §§goto(addr125);
                        }
                        §§goto(addr125);
                     }
                     else
                     {
                        §§push(this.§]k§());
                     }
                  }
                  §§goto(addr125);
               }
            }
            §§goto(addr71);
         }
         §§goto(addr49);
      }
      
      public function §52§(param1:§9y§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.setTool(§8!X§);
            if(_loc2_)
            {
               (this.getCurrentTool() as §8!X§).§%a§(param1);
            }
         }
      }
      
      public function §9[§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§]! §();
            if(!(_loc2_ && _loc1_))
            {
               addr37:
               this.§if §();
               if(!_loc2_)
               {
                  §§goto(addr41);
               }
               §§goto(addr46);
            }
            addr41:
            this.getCamera().§ !C§();
            if(_loc1_)
            {
               addr46:
               §^7§.§>!B§(false);
            }
            return;
         }
         §§goto(addr37);
      }
      
      public function §3!$§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §-n§.background.resetLevelBackground(param1);
            if(!(_loc2_ && param1))
            {
               addr45:
               this.mEditorUI.§[!t§(false);
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §"J§(param1:String) : void
      {
      }
      
      private function §!!L§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Object = §4!Z§();
         var _loc2_:BitmapData = §18§();
         var _loc3_:ByteArray = §!!v§.encode(_loc2_);
         if(_loc4_ || this)
         {
            _loc1_.screen = Base64.§=G§(_loc3_);
            if(_loc4_)
            {
               this.§-k§(JSON.stringify(_loc1_));
            }
         }
      }
      
      public function §-2§(param1:§2! §) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §-n§.clearLevel();
         if(!_loc2_)
         {
            §-n§.init(param1);
            §-n§.objects.setGroundTextureEnabled(false);
            if(!_loc2_)
            {
               §-n§.objects.setDamageEnabled(false);
               if(!_loc2_)
               {
                  §^7§.§>!B§(true);
                  addr59:
                  this.getCamera().§@!a§();
                  addr62:
                  this.§9'§();
                  if(!_loc2_)
                  {
                     this.§1#§();
                     §-n§.slingshot.setSlingShotState(§;§.§>!]§);
                  }
               }
               return;
            }
            §§goto(addr62);
         }
         §§goto(addr59);
      }
      
      public function §0j§() : Point
      {
         return this.getCurrentTool().§0j§();
      }
      
      public function §-!M§(param1:Number, param2:Number) : Point
      {
         return §-n§.box2DToScreen(param1,param2);
      }
      
      public function §+!u§() : Boolean
      {
         return false;
      }
      
      public function calculateCurrentScoreLimits() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:§<!3§ = null;
         var _loc1_:§2! § = getCurrentLevelData();
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = Number(0);
         while(true)
         {
            §§push(_loc4_);
            if(!_loc8_)
            {
               if(§§pop() >= §-n§.objects.getObjectCount())
               {
                  §§push(Math.max(0,§-n§.slingshot.getBirdCount() - 1) * 10000);
                  break;
               }
               §§push((_loc7_ = §-n§.objects.getObject(_loc4_)).§%P§());
               if(_loc9_ || this)
               {
                  if(§§pop())
                  {
                     §§push(_loc2_);
                     if(!(_loc8_ && this))
                     {
                        §§push(_loc7_.§9U§);
                        if(!_loc8_)
                        {
                           §§push(§§pop().score);
                           if(!_loc8_)
                           {
                              §§push(§7E§.§5X§.getValue() * _loc7_.§1!s§);
                              if(!_loc8_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc8_ && _loc1_))
                                    {
                                       §§push(int(§§pop()));
                                       if(!_loc8_)
                                       {
                                          _loc2_ = §§pop();
                                          addr169:
                                          §§push(_loc4_);
                                          if(_loc9_)
                                          {
                                             §§push(§§pop() + 1);
                                             if(_loc8_)
                                             {
                                             }
                                             addr176:
                                             _loc4_ = §§pop();
                                             continue;
                                          }
                                          §§push(Number(§§pop()));
                                       }
                                       else
                                       {
                                          addr118:
                                          §§push(_loc7_.§9U§.score);
                                          if(!(_loc8_ && _loc1_))
                                          {
                                             addr126:
                                             §§push(§§pop() + §§pop());
                                             if(_loc9_)
                                             {
                                                §§push(int(§§pop()));
                                                if(!_loc8_)
                                                {
                                                   addr132:
                                                   _loc3_ = §§pop();
                                                   if(_loc7_.§'c§())
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(_loc3_);
                                                      if(_loc9_ || _loc2_)
                                                      {
                                                         addr149:
                                                         §§push(§§pop() + §7E§.§5X§.getValue() * _loc7_.§1!s§);
                                                         if(_loc9_ || this)
                                                         {
                                                            addr161:
                                                            _loc3_ = int(§§pop());
                                                            if(!(_loc9_ || _loc2_))
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         §§goto(addr176);
                                                      }
                                                      §§goto(addr161);
                                                   }
                                                   §§goto(addr169);
                                                }
                                                §§goto(addr161);
                                             }
                                             §§goto(addr176);
                                          }
                                          §§goto(addr149);
                                       }
                                       §§goto(addr176);
                                    }
                                    §§goto(addr161);
                                 }
                              }
                              §§goto(addr149);
                           }
                           §§goto(addr126);
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr132);
                  }
                  else
                  {
                     §§push(_loc7_.§7T§);
                     if(_loc9_ || _loc1_)
                     {
                        addr112:
                        if(§§pop())
                        {
                           §§push(_loc3_);
                           if(_loc9_)
                           {
                              §§goto(addr118);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr169);
                     }
                  }
                  §§goto(addr132);
               }
               §§goto(addr112);
            }
            break;
         }
         var _loc5_:int = §§pop();
         §§push(_loc2_);
         if(!_loc8_)
         {
            §§push(§§pop() + _loc3_);
            if(_loc9_)
            {
               §§push(§§pop() + _loc5_);
            }
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         if(_loc9_)
         {
            this.mEditorUI.§1#§(_loc2_,_loc6_);
            if(_loc9_)
            {
               addr225:
               _loc1_.§8+§(_loc1_.§9>§);
            }
            return;
         }
         §§goto(addr225);
      }
      
      public function getSelectedObjects() : Vector.<§;5§>
      {
         return this.getCurrentTool().getSelectedObjects();
      }
      
      public function §;e§() : Point
      {
         var _loc1_:§^7§ = this.getCamera();
         return new Point(_loc1_.xCenterB2,_loc1_.yCenterB2);
      }
      
      public function getLevelMain() : §7E§
      {
         return §-n§;
      }
      
      public function §9V§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§9'§();
         }
         try
         {
            if(!§8T§)
            {
               if(!(_loc3_ && _loc2_))
               {
                  §8T§ = SharedObject.getLocal(§35§.§]!<§());
                  if(_loc4_)
                  {
                     addr62:
                     §8T§.data[§@!A§] = §?!]§.§4!E§();
                     if(!_loc4_)
                     {
                     }
                     return;
                     addr72:
                  }
                  §8T§.flush();
               }
               §§goto(addr72);
            }
            §§goto(addr62);
         }
         catch(e:Error)
         {
         }
         §§goto(addr62);
      }
      
      private function loadFromMemory() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§2! § = §4!;§();
         if(_loc2_ || _loc2_)
         {
            if(_loc1_)
            {
               if(_loc2_ || _loc2_)
               {
                  addr46:
                  this.§-2§(_loc1_);
               }
            }
            return;
         }
         §§goto(addr46);
      }
   }
}
