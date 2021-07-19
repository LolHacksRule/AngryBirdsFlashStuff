package §`C§
{
   import §]!B§.Texture;
   import §]@§.DisplayObject;
   import §]@§.Stage;
   import §`!M§.§]!N§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.display3D.Context3D;
   import flash.display3D.Program3D;
   import flash.errors.IllegalOperationError;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TouchEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.ContextMenu;
   import flash.ui.Multitouch;
   import flash.ui.MultitouchInputMode;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import starling.events.§-,§;
   import starling.events.§3M§;
   import starling.events.§6C§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §9!'§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var § F§:§9!'§;
      
      private static var §@L§:Boolean;
      
      private static var §9!8§:int;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            VERSION = "1.0";
         }
      }
      
      private var mStage3D:Stage3D;
      
      private var §6$§:§]@§.Stage;
      
      private var §"!&§:Class;
      
      private var §9!]§:§]@§.DisplayObject;
      
      private var §^!5§:§]!N§;
      
      private var §<!A§:Boolean;
      
      private var § "§:Boolean;
      
      private var §@![§:§'!N§;
      
      private var §2!S§:§-,§;
      
      private var §]q§:int;
      
      private var §2!X§:Boolean;
      
      private var § f§:Boolean;
      
      private var §9+§:Number;
      
      private var §9S§:Rectangle;
      
      private var § !4§:Boolean;
      
      private var §8!#§:flash.display.Stage;
      
      private var §]S§:Sprite;
      
      private var §<n§:Context3D;
      
      private var §`Y§:Dictionary;
      
      private var §0!F§:int;
      
      private var §"F§:Boolean;
      
      private var §&I§:Number;
      
      private var §5!;§:Number;
      
      private var §4L§:Number;
      
      private var §52§:Number;
      
      private var §@z§:Number;
      
      private var §19§:Number;
      
      private var §%m§:Function;
      
      private var §^!W§:uint;
      
      private var §0!7§:String;
      
      private var §^z§:Bitmap;
      
      private var §2!Z§:Boolean = false;
      
      private var §]K§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §67§:Boolean = false;
      
      public function §9!'§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:String = null;
         if(!_loc9_)
         {
            super();
            if(param2 == null)
            {
               if(!(_loc9_ && param1))
               {
                  throw new ArgumentError("Stage must not be null");
               }
               loop1:
               while(true)
               {
                  this.§"!&§ = param1;
                  loop2:
                  while(true)
                  {
                     if(_loc10_)
                     {
                        if(!(_loc9_ && this))
                        {
                           this.§9S§ = param3;
                           loop3:
                           while(true)
                           {
                              this.mStage3D = param4;
                              loop4:
                              while(true)
                              {
                                 this.§6$§ = new §]@§.Stage(param3.width,param3.height,param2.color);
                                 loop5:
                                 while(true)
                                 {
                                    if(_loc10_)
                                    {
                                       this.§8!#§ = param2;
                                       loop6:
                                       while(true)
                                       {
                                          if(!_loc9_)
                                          {
                                             if(_loc10_)
                                             {
                                                if(_loc9_ && param2)
                                                {
                                                   break loop5;
                                                }
                                                while(true)
                                                {
                                                   this.§2!S§ = new §-,§(this.§6$§);
                                                   loop13:
                                                   while(_loc10_)
                                                   {
                                                      this.§^!5§ = new §]!N§();
                                                      loop14:
                                                      while(true)
                                                      {
                                                         this.§]q§ = 0;
                                                         loop15:
                                                         while(true)
                                                         {
                                                            if(!(_loc9_ && param3))
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  break;
                                                               }
                                                               this.§2!X§ = false;
                                                               loop16:
                                                               while(!_loc9_)
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  if(_loc10_ || param3)
                                                                  {
                                                                     this.§ f§ = false;
                                                                     loop17:
                                                                     for(; _loc10_; while(true)
                                                                     {
                                                                        if(!(_loc9_ && param2))
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              this.§`Y§ = new Dictionary();
                                                                              if(!(_loc9_ && param2))
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           continue loop16;
                                                                        }
                                                                        continue loop17;
                                                                     },continue loop6)
                                                                     {
                                                                        do
                                                                        {
                                                                           this.§9+§ = getTimer() / 1000;
                                                                           continue loop17;
                                                                        }
                                                                        while(false);
                                                                        
                                                                        var _loc7_:int = 0;
                                                                        var _loc8_:* = this.§;![§;
                                                                        addr331:
                                                                        for each(_loc6_ in _loc8_)
                                                                        {
                                                                           if(!(_loc9_ && param2))
                                                                           {
                                                                              param2.addEventListener(_loc6_,this.§4u§,false,0,true);
                                                                           }
                                                                           §§goto(addr331);
                                                                        }
                                                                        if(_loc10_)
                                                                        {
                                                                           param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§&!^§,false,0,true);
                                                                           param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§&!^§,false,0,true);
                                                                           this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§"$§,false,1,true);
                                                                           this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§7O§,false,1,true);
                                                                           addr407:
                                                                           addr457:
                                                                           addr437:
                                                                           if(!(_loc9_ && param1))
                                                                           {
                                                                              this.mStage3D.visible = false;
                                                                              addr381:
                                                                              if(_loc10_ || this)
                                                                              {
                                                                                 if(!(_loc9_ && param1))
                                                                                 {
                                                                                    this.§'!<§(true);
                                                                                    addr371:
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          this.§^!W§ = param2.color;
                                                                                          this.§0!7§ = param5;
                                                                                          addr366:
                                                                                          if(_loc10_ || param2)
                                                                                          {
                                                                                             if(!(_loc10_ || param2))
                                                                                             {
                                                                                                §§goto(addr371);
                                                                                             }
                                                                                             return;
                                                                                          }
                                                                                          addr366:
                                                                                          §§goto(addr366);
                                                                                       }
                                                                                       §§goto(addr407);
                                                                                    }
                                                                                    §§goto(addr381);
                                                                                 }
                                                                                 §§goto(addr457);
                                                                              }
                                                                              §§goto(addr437);
                                                                           }
                                                                           addr426:
                                                                           §§goto(addr426);
                                                                        }
                                                                        §§goto(addr366);
                                                                     }
                                                                     continue loop15;
                                                                  }
                                                                  addr279:
                                                                  while(true)
                                                                  {
                                                                     §+!N§ = true;
                                                                     addr273:
                                                                     while(true)
                                                                     {
                                                                        this.§?!^§();
                                                                        continue loop1;
                                                                     }
                                                                  }
                                                               }
                                                               continue loop4;
                                                            }
                                                            continue loop14;
                                                         }
                                                         continue loop13;
                                                      }
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                             break;
                                          }
                                          continue loop5;
                                       }
                                       while(true)
                                       {
                                          this.§@z§ = param2.stageWidth;
                                          break loop2;
                                       }
                                       addr291:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§4L§ = this.§&I§;
                                          break loop5;
                                       }
                                       addr302:
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§52§ = this.§5!;§;
                                    §§goto(addr291);
                                 }
                              }
                              if(!(_loc10_ || this))
                              {
                                 continue;
                              }
                              §§goto(addr127);
                           }
                        }
                        break;
                     }
                     §§goto(addr273);
                  }
                  while(true)
                  {
                     this.§19§ = param2.stageHeight;
                     §§goto(addr279);
                  }
               }
            }
            else
            {
               if(param1 == null)
               {
                  if(_loc10_)
                  {
                     throw new ArgumentError("Root class must not be null");
                  }
                  addr70:
                  param3 = new Rectangle(0,0,param2.stageWidth,param2.stageHeight);
               }
               else if(param3 == null)
               {
                  if(!_loc9_)
                  {
                     §§goto(addr70);
                  }
                  §§goto(addr273);
               }
               if(param4 == null)
               {
                  if(_loc10_ || param2)
                  {
                     param4 = param2.stage3Ds[0];
                     addr96:
                     this.§&I§ = param3.width;
                     if(_loc10_ || param3)
                     {
                        this.§5!;§ = param3.height;
                     }
                     §§goto(addr226);
                  }
                  §§goto(addr302);
               }
               §§goto(addr96);
            }
            §§goto(addr226);
         }
         §§goto(addr70);
      }
      
      public static function get §'!$§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§7!Z§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || §9!'§)
                  {
                     addr46:
                     §§push(§7!Z§.§"F§);
                     if(_loc2_ || _loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr65:
                     return true;
                  }
                  return §§pop();
               }
               §§goto(addr65);
            }
            §§goto(addr46);
         }
         §§goto(addr65);
      }
      
      public static function §%C§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§ F§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(§ F§);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop().§2!Z§);
                                 if(_loc1_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 loop6:
                                 while(_loc1_ || _loc2_)
                                 {
                                    §§push(§§pop());
                                    loop7:
                                    for(; !_loc2_; §§push(§§pop()),if(!(_loc1_ || _loc1_))
                                    {
                                       continue;
                                    },if(§§pop())
                                    {
                                       §§goto(addr88);
                                    })
                                    {
                                       if(!§§pop())
                                       {
                                          loop8:
                                          while(_loc1_)
                                          {
                                             §§pop();
                                             loop9:
                                             while(true)
                                             {
                                                §§push(§ F§);
                                                loop10:
                                                for(; !_loc2_; while(true)
                                                {
                                                   §§push(§ F§);
                                                   if(!(_loc1_ || §9!'§))
                                                   {
                                                      continue loop10;
                                                   }
                                                   if(!_loc1_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   §§push(§§pop().§<n§.driverInfo == "Disposed");
                                                   if(!_loc2_)
                                                   {
                                                      §§goto(addr36);
                                                   }
                                                   §§goto(addr46);
                                                })
                                                {
                                                   §§push(§§pop().§<n§ == null);
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         §§push(!§§pop());
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         addr88:
                                                         addr88:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            if(_loc1_)
                                                            {
                                                               if(!_loc1_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop10;
                                                            }
                                                            continue loop9;
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop8;
                                                      addr36:
                                                      if(_loc2_ && _loc1_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc1_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      §§push(!§§pop());
                                                      if(!_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr88);
                                                   }
                                                }
                                                continue loop0;
                                             }
                                          }
                                          continue loop3;
                                       }
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      public static function get §7!Z§() : §9!'§
      {
         return § F§;
      }
      
      public static function get §`!@§() : §]!N§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§ F§);
            if(_loc2_ || _loc2_)
            {
               return !!§§pop() ? § F§.§`!@§ : null;
            }
         }
         §§goto(addr49);
      }
      
      public static function get §4I§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §4I§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
         }
      }
      
      public static function get §+!N§() : Boolean
      {
         return §@L§;
      }
      
      public static function set §+!N§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§ F§ != null)
            {
               if(!_loc2_)
               {
                  §§goto(addr56);
               }
               else
               {
                  while(true)
                  {
                  }
                  addr60:
               }
            }
            while(true)
            {
               §@L§ = param1;
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr60);
            }
            return;
         }
         addr56:
         throw new IllegalOperationError("Setting must be changed before Starling instance is created");
      }
      
      public static function §9!L§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            if(§7!Z§)
            {
               if(_loc5_ || param1)
               {
                  return Texture.§5C§(§7!Z§.§<n§,param1,param2,param3);
                  addr43:
               }
            }
            return null;
         }
         §§goto(addr43);
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = null;
         if(!_loc3_)
         {
            §§push(§ F§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop().§<n§)
               {
                  if(_loc4_)
                  {
                     §§push(§ F§);
                     if(!_loc3_)
                     {
                        §§pop().§<n§.drawToBitmapData(param1);
                        if(!_loc4_)
                        {
                           addr68:
                           _loc2_ = § F§.§@![§.canvas;
                           addr66:
                           if(_loc4_ || _loc2_)
                           {
                              param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
                           }
                        }
                        else
                        {
                           addr52:
                        }
                        §§goto(addr100);
                     }
                     else
                     {
                        addr61:
                        §§push(§§pop().§@![§);
                        if(_loc4_)
                        {
                           if(§§pop().canvas)
                           {
                              §§goto(addr66);
                           }
                           addr100:
                           return;
                        }
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr52);
               }
               else
               {
                  §§push(§ F§);
                  if(_loc4_ || param1)
                  {
                     §§goto(addr61);
                  }
               }
            }
            §§goto(addr68);
         }
         §§goto(addr52);
      }
      
      public function get §'Q§() : §]@§.DisplayObject
      {
         return this.§9!]§;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^!W§ = param1;
         }
      }
      
      public function get §>]§() : Number
      {
         return this.§&I§;
      }
      
      public function get §9!+§() : Number
      {
         return this.§5!;§;
      }
      
      public function §1!Y§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         try
         {
            this.mStage3D.requestContext3D(this.§0!7§);
         }
         catch(e:Error)
         {
            §>!H§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         if(!(_loc6_ && _loc3_))
         {
            this.§67§ = true;
         }
         loop0:
         while(true)
         {
            this.§8!#§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§&!^§,false);
            while(true)
            {
               this.§8!#§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§&!^§,false);
               while(!(_loc6_ && _loc1_))
               {
                  loop3:
                  while(true)
                  {
                     this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§"$§,false);
                     while(_loc5_)
                     {
                        this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§7O§,false);
                        if(!(_loc6_ && this))
                        {
                           continue loop3;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      private function §^!&§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§<n§ = this.mStage3D.context3D;
            loop0:
            while(true)
            {
               this.§`Y§ = new Dictionary();
               loop1:
               while(true)
               {
                  if(!this.§<n§)
                  {
                     this.§"F§ = true;
                     while(true)
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           loop3:
                           while(true)
                           {
                              this.§"!]§();
                              if(!_loc1_)
                              {
                                 break;
                              }
                              if(!(_loc2_ && _loc2_))
                              {
                                 return;
                              }
                              loop4:
                              for(; this.§<n§.driverInfo.indexOf("Software") >= 0; while(true)
                              {
                                 this.§<n§.enableErrorChecking = this.§ f§;
                                 continue loop4;
                              })
                              {
                                 if(_loc1_)
                                 {
                                    if(!(_loc1_ || _loc1_))
                                    {
                                       continue;
                                    }
                                    if(_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    this.§"F§ = true;
                                 }
                              }
                              addr41:
                              while(true)
                              {
                                 continue loop3;
                              }
                           }
                           continue;
                        }
                        while(_loc1_)
                        {
                           §§goto(addr41);
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      private function §'m§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§6$§);
            loop0:
            while(true)
            {
               if(§§pop().numChildren <= 0)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§9!]§);
                     loop2:
                     while(true)
                     {
                        §§push(null);
                        loop3:
                        while(true)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc2_)
                              {
                                 this.§9!]§ = new this.§"!&§();
                              }
                              while(_loc2_ || _loc1_)
                              {
                                 if(_loc1_ && this)
                                 {
                                    continue;
                                 }
                                 return;
                                 addr41:
                              }
                              §§goto(addr117);
                           }
                           while(true)
                           {
                              §§push(this.§9!]§);
                              if(_loc2_ || this)
                              {
                                 §§push(null);
                                 if(!_loc1_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          throw new Error("Invalid root class: " + this.§"!&§);
                                       }
                                       while(!_loc1_)
                                       {
                                       }
                                       continue loop1;
                                       addr80:
                                    }
                                    while(true)
                                    {
                                       §§push(this.§6$§);
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       §§pop().addChild(this.§9!]§);
                                       if(_loc2_)
                                       {
                                          §§goto(addr34);
                                       }
                                       else
                                       {
                                          §§goto(addr80);
                                       }
                                    }
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                              continue loop2;
                           }
                           §§goto(addr41);
                        }
                     }
                  }
               }
               addr117:
               return;
            }
         }
         §§goto(addr41);
      }
      
      private function §"!]§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§]K§ = true;
            while(true)
            {
               this.mStage3D.x = this.§9S§.x;
               while(!_loc2_)
               {
                  this.mStage3D.y = this.§9S§.y;
                  if(!(_loc2_ && _loc1_))
                  {
                     return;
                     addr52:
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      private function render() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(§%C§());
            loop0:
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(this.§]K§);
                  if(_loc4_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           if(_loc3_)
                           {
                              continue;
                           }
                           while(true)
                           {
                              if(this.§<n§)
                              {
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    if(_loc3_)
                                    {
                                       break loop0;
                                    }
                                    this.§<n§.configureBackBuffer(this.§9S§.width,this.§9S§.height,this.§]q§,false);
                                    loop2:
                                    while(true)
                                    {
                                       addr20:
                                       while(true)
                                       {
                                          this.§]K§ = false;
                                          if(_loc4_ || this)
                                          {
                                             break loop2;
                                          }
                                          continue loop2;
                                       }
                                    }
                                    if(true)
                                    {
                                       break loop1;
                                    }
                                    continue loop1;
                                    addr72:
                                 }
                                 §§goto(addr72);
                              }
                              §§goto(addr20);
                           }
                        }
                        §§goto(addr72);
                     }
                     break;
                  }
                  continue loop0;
               }
               §§push(getTimer() / 1000);
               if(!_loc3_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc1_:* = §§pop();
               §§push(_loc1_);
               if(!_loc3_)
               {
                  §§push(§§pop() - this.§9+§);
                  if(!(_loc3_ && _loc1_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc2_:* = §§pop();
               if(_loc4_ || _loc3_)
               {
                  this.§9+§ = _loc1_;
                  loop3:
                  while(true)
                  {
                     §§push(this.§6$§);
                     while(true)
                     {
                        §§pop().advanceTime(_loc2_);
                        addr234:
                        §§push(this.§6$§);
                        if(!_loc4_)
                        {
                           continue;
                        }
                        §§pop().render(this.§@![§,1);
                        loop14:
                        while(true)
                        {
                           §§push(this.§@![§);
                           while(true)
                           {
                              §§pop().§+!2§();
                              loop16:
                              while(!(_loc3_ && _loc3_))
                              {
                                 if(this.§%m§ == null)
                                 {
                                    loop20:
                                    while(true)
                                    {
                                       §§push(this.§@![§);
                                       loop21:
                                       while(true)
                                       {
                                          §§pop().finishRendering(this.§<n§);
                                          addr159:
                                          addr175:
                                          loop22:
                                          while(_loc4_ || this)
                                          {
                                             if(_loc3_)
                                             {
                                                continue loop14;
                                             }
                                             if(_loc4_)
                                             {
                                                continue loop21;
                                             }
                                             addr275:
                                             while(!_loc3_)
                                             {
                                                §§push(this.§@![§);
                                                loop8:
                                                while(true)
                                                {
                                                   §§pop().§!D§(this.§6$§.stageWidth,this.§6$§.stageHeight);
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(this.§@![§);
                                                      loop10:
                                                      while(_loc4_)
                                                      {
                                                         §§pop().clear(this.§<n§,this.§^!W§,1);
                                                         while(!_loc3_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            §§push(this.§@![§);
                                                            while(true)
                                                            {
                                                               §§pop().§;g§(this.§<n§,this.§0!F§);
                                                               break loop16;
                                                               addr125:
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     §§pop().§2y§();
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        return;
                                                                     }
                                                                     continue loop22;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                            }
                                                         }
                                                         continue loop9;
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                this.§2!S§.advanceTime(_loc2_);
                                                §§goto(addr267);
                                             }
                                             addr267:
                                          }
                                          addr291:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!(_loc4_ || _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   continue loop20;
                                                }
                                                continue loop16;
                                             }
                                             §§goto(addr159);
                                          }
                                          while(true)
                                          {
                                             this.§^!5§.advanceTime(_loc2_);
                                             §§goto(addr275);
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§%m§();
                                    continue loop14;
                                 }
                              }
                              while(!_loc3_)
                              {
                                 §§goto(addr234);
                              }
                              §§goto(addr246);
                           }
                        }
                     }
                  }
               }
               §§goto(addr291);
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function set §7%§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§%m§ = param1;
         }
      }
      
      private function §^q§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:BitmapData = null;
         if(_loc5_)
         {
            this.§]S§.x = this.§9S§.x;
            if(_loc5_)
            {
               addr30:
               this.§]S§.y = this.§9S§.y;
            }
            var _loc1_:int = this.§]S§.numChildren;
            var _loc2_:flash.display.DisplayObject = this.§]S§.parent;
            if(_loc5_)
            {
               §§push(_loc1_);
               loop0:
               while(true)
               {
                  §§push(0);
                  addr231:
                  while(true)
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc5_)
                     {
                        §§push(!§§pop());
                        if(!_loc4_)
                        {
                           §§push(§§pop());
                           loop2:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 addr239:
                                 while(true)
                                 {
                                    §§pop();
                                    addr240:
                                    while(true)
                                    {
                                       §§push(_loc2_ == null);
                                    }
                                 }
                                 addr239:
                              }
                              while(true)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       continue loop0;
                                    }
                                    loop22:
                                    while(true)
                                    {
                                       this.§8!#§.addChild(this.§]S§);
                                       while(true)
                                       {
                                          loop14:
                                          while(true)
                                          {
                                             §§push(this.§@![§);
                                             loop15:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop16:
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc5_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         loop17:
                                                         while(_loc5_)
                                                         {
                                                            §§pop();
                                                            loop18:
                                                            while(true)
                                                            {
                                                               if(_loc4_ && _loc2_)
                                                               {
                                                                  break loop16;
                                                               }
                                                               §§push(this.§@![§);
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(Boolean(§§pop().canvas));
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  if(_loc4_ && this)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr65:
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     while(§§pop())
                                                                     {
                                                                        if(!(_loc5_ || _loc2_))
                                                                        {
                                                                           continue loop18;
                                                                        }
                                                                        §§push(this.§@![§);
                                                                        if(_loc5_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc4_ && this))
                                                                              {
                                                                                 §§pop().setCanvasSize(this.§4L§,this.§52§,this.§9S§.width / this.§6$§.stageWidth,this.§9S§.height / this.§6$§.stageHeight);
                                                                                 continue loop18;
                                                                              }
                                                                              continue loop15;
                                                                           }
                                                                           addr85:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr243:
                                                                           _loc3_ = §§pop().canvas;
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              if(this.§^z§.bitmapData != _loc3_)
                                                                              {
                                                                                 if(!(_loc4_ && _loc2_))
                                                                                 {
                                                                                    addr315:
                                                                                    this.§^z§.bitmapData = _loc3_;
                                                                                 }
                                                                                 addr319:
                                                                              }
                                                                              addr270:
                                                                              if(this.§8!#§.getChildIndex(this.§]S§) > 0)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(_loc5_ || _loc1_)
                                                                                    {
                                                                                       this.§8!#§.removeChild(this.§]S§);
                                                                                       this.§8!#§.addChildAt(this.§]S§,0);
                                                                                       addr292:
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             §§goto(addr270);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       addr292:
                                                                                       §§goto(addr292);
                                                                                    }
                                                                                    §§goto(addr319);
                                                                                 }
                                                                                 §§goto(addr292);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr315);
                                                                        }
                                                                     }
                                                                     return;
                                                                     addr72:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr206:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     continue loop2;
                                                                     §§goto(addr65);
                                                                  }
                                                               }
                                                               §§goto(addr85);
                                                            }
                                                            continue loop16;
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc4_ && _loc3_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            if(!_loc4_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  §§goto(addr178);
                                                               }
                                                               addr176:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr239);
                                                            }
                                                         }
                                                         §§goto(addr240);
                                                         addr167:
                                                      }
                                                      §§goto(addr72);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         break loop16;
                                                      }
                                                      addr215:
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr167);
                                                }
                                             }
                                          }
                                          continue loop22;
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                     §§goto(addr239);
                  }
               }
            }
            §§goto(addr190);
         }
         §§goto(addr30);
      }
      
      private function §>!H§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         if(_loc4_ || param1)
         {
            _loc3_.align = TextFormatAlign.CENTER;
            while(true)
            {
               _loc2_.defaultTextFormat = _loc3_;
               loop4:
               while(_loc4_ || param1)
               {
                  _loc2_.text = param1;
                  loop5:
                  while(!(_loc5_ && this))
                  {
                     _loc2_.x = (this.§6$§.stageWidth - _loc2_.width) / 2;
                     loop6:
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           continue loop5;
                        }
                        if(_loc5_)
                        {
                           break;
                        }
                        addr117:
                        if(_loc4_ || this)
                        {
                           _loc2_.y = (this.§6$§.stageHeight - _loc2_.height) / 2;
                           do
                           {
                              _loc2_.background = true;
                              do
                              {
                                 _loc2_.backgroundColor = 4456448;
                                 continue loop6;
                              }
                              while(_loc5_ && this);
                              
                           }
                           while(!_loc4_);
                           
                           return;
                        }
                        addr158:
                        while(true)
                        {
                           _loc2_.autoSize = TextFieldAutoSize.CENTER;
                           break loop6;
                           §§goto(addr117);
                        }
                     }
                     continue loop4;
                  }
                  while(true)
                  {
                     _loc2_.wordWrap = true;
                     §§goto(addr163);
                     §§goto(addr129);
                  }
                  addr129:
               }
            }
         }
         §§goto(addr178);
      }
      
      public function §?!^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            § F§ = this;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§<!A§ = true;
            do
            {
               this.mStage3D.visible = this.mStage3DEnabled;
            }
            while(!_loc1_);
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§<!A§ = false;
            do
            {
               this.mStage3D.visible = false;
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      public function §'!<§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§ "§ = param1;
         }
      }
      
      private function §<c§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§2!Z§ = true;
            loop0:
            while(this.§^z§ == null)
            {
               while(!_loc2_)
               {
                  this.§^z§ = new Bitmap();
                  do
                  {
                     this.§]!<§.addChild(this.§^z§);
                  }
                  while(!(_loc1_ || this));
                  
                  if(!(_loc2_ && _loc2_))
                  {
                     addr58:
                     break loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr58);
      }
      
      private function §7O§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<c§();
            do
            {
               this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
            }
            while(_loc2_ && this);
            
         }
      }
      
      private function §"$§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc2_)
         {
            §§push(this.§67§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     return;
                  }
                  while(true)
                  {
                     dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
                     if(!(_loc4_ && this))
                     {
                        if(!_loc4_)
                        {
                           if(_loc5_)
                           {
                              if(_loc5_)
                              {
                                 if(_loc5_)
                                 {
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       break;
                                    }
                                    loop9:
                                    while(true)
                                    {
                                       §§push(Boolean(this.§<n§));
                                       loop10:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop12:
                                                while(true)
                                                {
                                                   this.§?!^§();
                                                   loop13:
                                                   while(!(_loc4_ && this))
                                                   {
                                                      this.§^!&§();
                                                      while(!_loc4_)
                                                      {
                                                         this.§'m§();
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(this.§<n§));
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc4_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     loop17:
                                                                     do
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              this.mStage3DEnabled = false;
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                                 if(!(_loc4_ && param1))
                                                                                 {
                                                                                    this.§<n§ = null;
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc5_ || param1)
                                                                                       {
                                                                                          if(!(_loc4_ && _loc2_))
                                                                                          {
                                                                                             this.§<c§();
                                                                                             loop21:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc5_ || param1))
                                                                                                {
                                                                                                   continue loop18;
                                                                                                }
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      break loop20;
                                                                                                   }
                                                                                                   continue loop12;
                                                                                                }
                                                                                                addr206:
                                                                                                if(_loc5_ || param1)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!this.§<n§)
                                                                                                      {
                                                                                                         this.§@![§ = new §!T§();
                                                                                                         loop24:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc5_ || _loc2_)
                                                                                                            {
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§push(this.§@![§);
                                                                                                                  while(!_loc4_)
                                                                                                                  {
                                                                                                                     §§pop().setCanvasSize(this.§4L§,this.§52§,this.§9S§.width / this.§6$§.stageWidth,this.§9S§.height / this.§6$§.stageHeight);
                                                                                                                     loop26:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§@![§);
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        if(!(_loc5_ || _loc3_))
                                                                                                                        {
                                                                                                                           break loop19;
                                                                                                                        }
                                                                                                                        §§pop().clear(null,this.§^!W§);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr96:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              this.§2!S§.§&?§ = this.§2!X§;
                                                                                                                              addr102:
                                                                                                                              while(!_loc4_)
                                                                                                                              {
                                                                                                                                 continue loop21;
                                                                                                                              }
                                                                                                                              continue loop26;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§@![§);
                                                                                                                           break loop19;
                                                                                                                        }
                                                                                                                        addr363:
                                                                                                                     }
                                                                                                                     addr334:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§9!'§.§+!N§);
                                                                                                                        if(_loc5_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(!§§pop());
                                                                                                                           break loop17;
                                                                                                                        }
                                                                                                                        break loop17;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr362:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        continue loop19;
                                                                                                                     }
                                                                                                                     this.§@![§ = new §'!N§();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           break loop24;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr185:
                                                                                                               }
                                                                                                               §§goto(addr96);
                                                                                                            }
                                                                                                            §§goto(addr191);
                                                                                                         }
                                                                                                         continue loop20;
                                                                                                         addr161:
                                                                                                      }
                                                                                                      §§goto(addr185);
                                                                                                   }
                                                                                                   addr171:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr206);
                                                                                                   }
                                                                                                   addr370:
                                                                                                }
                                                                                                §§goto(addr362);
                                                                                             }
                                                                                             return;
                                                                                             addr323:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr330:
                                                                                          }
                                                                                          this.§>!H§("Fatal error: The application lost the device context!");
                                                                                          break;
                                                                                       }
                                                                                       loop22:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§"F§);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                          if(!(_loc4_ && _loc2_))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          addr292:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             continue loop22;
                                                                                          }
                                                                                       }
                                                                                       continue loop16;
                                                                                    }
                                                                                    this.stop();
                                                                                    §§goto(addr323);
                                                                                 }
                                                                                 §§goto(addr363);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop().dispose();
                                                                                 break loop13;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr171);
                                                                     }
                                                                     while(_loc5_);
                                                                     
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        break loop16;
                                                                     }
                                                                  }
                                                                  §§goto(addr292);
                                                               }
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  continue loop10;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  continue loop9;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr334);
                                                   }
                                                }
                                             }
                                             §§goto(addr330);
                                             if(_loc4_ && param1)
                                             {
                                                continue;
                                             }
                                             if(_loc5_ || param1)
                                             {
                                                §§goto(addr267);
                                             }
                                             §§goto(addr347);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr323);
                              }
                              §§goto(addr301);
                           }
                           §§goto(addr161);
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr102);
                  }
                  return;
               }
               var _loc2_:*;
               §§push((_loc2_ = §§findproperty(§9!8§)).§9!8§);
               if(!_loc4_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(_loc5_)
               {
                  _loc2_.§9!8§ = _loc3_;
               }
               if(!(_loc4_ && _loc2_))
               {
                  this.§0!F§ = §9!8§;
                  §§goto(addr370);
               }
               §§goto(addr193);
               §§goto(addr193);
            }
            §§goto(addr292);
         }
         §§goto(addr193);
      }
      
      public function §<!%§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§?!^§();
         }
         §§push(getTimer() / 1000);
         if(!(_loc4_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!_loc4_)
         {
            §§push(§§pop() - this.§9+§);
            if(!_loc4_)
            {
               addr42:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!(_loc4_ && _loc2_))
            {
               §§push(this.§<!A§);
               if(_loc5_)
               {
                  §§push(Boolean(§§pop()));
                  loop0:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop2:
                              while(!(_loc4_ && _loc3_))
                              {
                                 this.render();
                                 while(true)
                                 {
                                    addr77:
                                    if(!(_loc4_ && this))
                                    {
                                       this.§^q§();
                                       addr86:
                                       if(!_loc4_)
                                       {
                                          addr52:
                                          return;
                                          addr88:
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                              loop4:
                              while(true)
                              {
                                 §§push(_loc3_ > 1);
                                 if(_loc5_ || this)
                                 {
                                    break;
                                 }
                                 addr136:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop4;
                                 }
                              }
                              continue loop0;
                           }
                           while(true)
                           {
                              if(this.§]S§)
                              {
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§goto(addr77);
                                 }
                                 §§goto(addr86);
                              }
                              break;
                              §§goto(addr118);
                           }
                           §§goto(addr52);
                        }
                        continue;
                        addr107:
                     }
                  }
               }
               §§goto(addr136);
            }
            §§goto(addr88);
         }
         §§goto(addr42);
      }
      
      private function §&!^§(param1:flash.events.KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?!^§();
            do
            {
               this.§6$§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
            }
            while(!_loc2_);
            
         }
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1);
         if(_loc6_ || param2)
         {
            §§push(§§pop() / this.§&I§);
            if(!(_loc7_ && param3))
            {
               addr34:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(param2);
            if(_loc6_)
            {
               §§push(§§pop() / this.§5!;§);
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(!_loc7_)
            {
               if(param3)
               {
                  §§push(this.§6$§);
                  loop0:
                  while(true)
                  {
                     §§push(this.§&I§);
                     loop1:
                     while(true)
                     {
                        §§pop().stageWidth = §§pop();
                        loop2:
                        while(true)
                        {
                           if(_loc6_)
                           {
                              §§push(this.§6$§);
                              loop3:
                              for(; _loc6_; §§push(this.§6$§),if(_loc7_ && param2)
                              {
                                 continue;
                              },if(_loc6_ || param1)
                              {
                                 §§pop().dispatchEvent(new §6C§(flash.events.Event.RESIZE,param1,param2));
                                 if(_loc6_)
                                 {
                                    if(!_loc7_)
                                    {
                                       if(!_loc6_)
                                       {
                                          §§goto(addr180);
                                       }
                                       if(_loc6_)
                                       {
                                          addr85:
                                       }
                                       continue loop2;
                                       return;
                                    }
                                    §§goto(addr102);
                                 }
                                 §§goto(addr90);
                              },§§goto(addr195))
                              {
                                 if(!(_loc7_ && param1))
                                 {
                                    §§push(this.§5!;§);
                                    if(!(_loc7_ && param2))
                                    {
                                       if(!(_loc7_ && param2))
                                       {
                                          §§push(_loc5_);
                                          if(_loc6_)
                                          {
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc6_ || param1)
                                                {
                                                   if(!(_loc6_ || param2))
                                                   {
                                                      continue loop1;
                                                   }
                                                   if(!_loc7_)
                                                   {
                                                      addr164:
                                                      §§push(_loc4_);
                                                      if(_loc6_ || param2)
                                                      {
                                                         addr172:
                                                         §§push(§§pop() / §§pop());
                                                         if(_loc6_ || this)
                                                         {
                                                            §§pop().stageHeight = §§pop();
                                                            while(true)
                                                            {
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  this.§4L§ = param1;
                                                                  addr102:
                                                                  while(true)
                                                                  {
                                                                     this.§52§ = param2;
                                                                     addr90:
                                                                     addr200:
                                                                     while(_loc6_ || this)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     addr195:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc7_ && param3))
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        addr210:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§6$§);
                                                                           addr222:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§&I§);
                                                                              addr224:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 addr225:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    addr226:
                                                                                    loop4:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       addr227:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() / §§pop());
                                                                                          continue loop4;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr90);
                                                                     }
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§5!;§);
                                                                        addr197:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§pop().stageHeight = §§pop();
                                                                              §§goto(addr200);
                                                                           }
                                                                           §§goto(addr224);
                                                                           continue loop15;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr85);
                                                               }
                                                            }
                                                            addr180:
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop().stageWidth = §§pop();
                                                            addr229:
                                                            while(true)
                                                            {
                                                               §§goto(addr195);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr225);
                                                   }
                                                   §§goto(addr226);
                                                }
                                                §§goto(addr172);
                                             }
                                             §§goto(addr227);
                                          }
                                          §§goto(addr164);
                                       }
                                       §§goto(addr197);
                                    }
                                    §§goto(addr172);
                                 }
                                 §§goto(addr222);
                              }
                              continue loop0;
                           }
                           §§goto(addr229);
                        }
                     }
                  }
               }
               §§goto(addr210);
            }
            §§goto(addr102);
         }
         §§goto(addr34);
      }
      
      public function §4[§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.setCanvasSize(this.§&I§,this.§5!;§);
         }
      }
      
      private function §4u§(param1:flash.events.Event) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(_loc9_)
         {
            §§push(this.§<!A§);
            if(!(_loc10_ && param1))
            {
               §§push(!§§pop());
               if(!(_loc10_ && this))
               {
                  if(!§§pop())
                  {
                     if(_loc9_ || param1)
                     {
                        §§pop();
                        if(_loc9_ || _loc2_)
                        {
                           addr67:
                           §§push(this.§ "§);
                           if(!_loc10_)
                           {
                              addr71:
                              §§push(!§§pop());
                              if(_loc9_ || _loc2_)
                              {
                                 addr79:
                                 if(§§pop())
                                 {
                                    if(!_loc10_)
                                    {
                                       return;
                                    }
                                 }
                                 §§push(param1 is MouseEvent);
                              }
                              if(§§pop())
                              {
                                 addr94:
                                 §§push(Number((_loc6_ = param1 as MouseEvent).stageX));
                                 if(!(_loc10_ && this))
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc9_ || _loc2_)
                                    {
                                       addr163:
                                       _loc3_ = Number(_loc6_.stageY);
                                       loop4:
                                       while(true)
                                       {
                                          _loc4_ = 0;
                                          loop3:
                                          while(true)
                                          {
                                             loop2:
                                             while(true)
                                             {
                                                if(param1.type != MouseEvent.MOUSE_DOWN)
                                                {
                                                   if(param1.type == MouseEvent.MOUSE_UP)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               addr145:
                                                               if(!(_loc10_ && this))
                                                               {
                                                                  break;
                                                               }
                                                               continue loop4;
                                                            }
                                                            while(true)
                                                            {
                                                               this.§ !4§ = false;
                                                               addr135:
                                                               addr165:
                                                               while(true)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               addr165:
                                                               var _loc8_:* = param1.type;
                                                               if(_loc9_)
                                                               {
                                                                  if(TouchEvent.TOUCH_BEGIN === _loc8_)
                                                                  {
                                                                     if(!(_loc10_ && param1))
                                                                     {
                                                                        addr389:
                                                                        §§push(0);
                                                                        if(!_loc9_)
                                                                        {
                                                                           addr442:
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr424:
                                                                        §§push(3);
                                                                        if(_loc10_)
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                                  else if(TouchEvent.TOUCH_MOVE === _loc8_)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(1);
                                                                        if(!_loc9_)
                                                                        {
                                                                           addr417:
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr439:
                                                                        §§push(4);
                                                                        if(_loc9_)
                                                                        {
                                                                           §§goto(addr442);
                                                                        }
                                                                     }
                                                                  }
                                                                  else if(TouchEvent.TOUCH_END === _loc8_)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(2);
                                                                        if(_loc9_ || _loc3_)
                                                                        {
                                                                           §§goto(addr417);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr439);
                                                                     }
                                                                  }
                                                                  else if(MouseEvent.MOUSE_DOWN === _loc8_)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        §§goto(addr424);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr439);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     if(MouseEvent.MOUSE_UP === _loc8_)
                                                                     {
                                                                        if(_loc9_ || this)
                                                                        {
                                                                           §§goto(addr439);
                                                                        }
                                                                        addr460:
                                                                        switch(§§pop())
                                                                        {
                                                                           case 0:
                                                                              §§push(§3M§.§+c§);
                                                                              if(_loc9_ || param1)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    _loc5_ = §§pop();
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             §§push(§§pop() - this.§9S§.x);
                                                                                             loop7:
                                                                                             for(; _loc9_ || _loc2_; if(_loc10_ && param1)
                                                                                             {
                                                                                                continue;
                                                                                             },§§goto(addr524),§§push(Number(§§pop())))
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc2_ = §§pop();
                                                                                                   loop22:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc9_ || _loc3_)
                                                                                                      {
                                                                                                         addr565:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc3_);
                                                                                                            if(_loc9_ || this)
                                                                                                            {
                                                                                                               §§push(§§pop() - this.§9S§.y);
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  addr524:
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        if(_loc9_ || _loc3_)
                                                                                                                        {
                                                                                                                           _loc3_ = §§pop();
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              continue loop22;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 §§goto(addr568);
                                                                                                                                 §§push(_loc5_);
                                                                                                                              }
                                                                                                                              §§goto(addr658);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr670:
                                                                                                                        }
                                                                                                                        §§goto(addr674);
                                                                                                                     }
                                                                                                                     §§goto(addr648);
                                                                                                                  }
                                                                                                                  §§goto(addr593);
                                                                                                               }
                                                                                                            }
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               break loop22;
                                                                                                            }
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                         addr565:
                                                                                                      }
                                                                                                      §§goto(addr587);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr623);
                                                                                                §§goto(addr657);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr557);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr321:
                                                                                 §§push(§§pop());
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    addr342:
                                                                                    if(!(_loc10_ && _loc3_))
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          _loc5_ = §§pop();
                                                                                          addr309:
                                                                                          break;
                                                                                          addr352:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr368:
                                                                                          _loc5_ = §§pop();
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr359:
                                                                                       _loc5_ = §§pop();
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       addr358:
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 _loc5_ = §§pop();
                                                                                 break;
                                                                                 addr335:
                                                                              }
                                                                              §§goto(addr359);
                                                                           case 1:
                                                                              addr367:
                                                                              §§goto(addr368);
                                                                           case 2:
                                                                              §§goto(addr358);
                                                                           case 3:
                                                                              addr341:
                                                                              §§goto(addr342);
                                                                           case 4:
                                                                              addr314:
                                                                              §§push(§3M§.§@!,§);
                                                                              §§push(§3M§.§"!,§);
                                                                              §§push(§3M§.§+c§);
                                                                              §§push(§3M§.§"!,§);
                                                                              if(!(_loc10_ && _loc3_))
                                                                              {
                                                                                 §§goto(addr321);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr367);
                                                                              }
                                                                           case 5:
                                                                              §§push(this.§ !4§);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc10_ && _loc2_))
                                                                                    {
                                                                                       if(_loc9_ || _loc2_)
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             if(_loc9_ || this)
                                                                                             {
                                                                                                §§push(§3M§.§@!,§);
                                                                                                if(!(_loc10_ && param1))
                                                                                                {
                                                                                                   if(!(_loc10_ && param1))
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(!(_loc10_ && _loc2_))
                                                                                                      {
                                                                                                         if(_loc9_ || _loc2_)
                                                                                                         {
                                                                                                            addr301:
                                                                                                            §§push(§§pop());
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               _loc5_ = §§pop();
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  if(true)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr565);
                                                                                                            }
                                                                                                            §§goto(addr568);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr321);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr568);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr314);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr294:
                                                                                                   if(_loc9_ || param1)
                                                                                                   {
                                                                                                      §§goto(addr301);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr341);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr301);
                                                                                             }
                                                                                             §§goto(addr359);
                                                                                          }
                                                                                          §§goto(addr352);
                                                                                       }
                                                                                       §§goto(addr335);
                                                                                    }
                                                                                    §§goto(addr565);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(§3M§.§3!$§);
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       if(!(_loc10_ && _loc2_))
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(_loc9_ || param1)
                                                                                          {
                                                                                             §§goto(addr294);
                                                                                          }
                                                                                          §§goto(addr568);
                                                                                       }
                                                                                       §§goto(addr359);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr568);
                                                                              }
                                                                              §§goto(addr598);
                                                                        }
                                                                        §§goto(addr670);
                                                                        §§push(_loc2_);
                                                                     }
                                                                     else
                                                                     {
                                                                        if(MouseEvent.MOUSE_MOVE !== _loc8_)
                                                                        {
                                                                           §§goto(addr460);
                                                                           §§push(6);
                                                                        }
                                                                        §§goto(addr460);
                                                                     }
                                                                     §§push(5);
                                                                     if(_loc9_ || _loc2_)
                                                                     {
                                                                     }
                                                                  }
                                                                  §§goto(addr460);
                                                               }
                                                               §§goto(addr389);
                                                            }
                                                         }
                                                         §§goto(addr165);
                                                         addr155:
                                                      }
                                                      §§goto(addr135);
                                                   }
                                                   §§goto(addr165);
                                                }
                                                §§goto(addr145);
                                             }
                                             this.§ !4§ = true;
                                             §§goto(addr155);
                                          }
                                       }
                                    }
                                    §§goto(addr132);
                                 }
                                 §§goto(addr163);
                              }
                              else
                              {
                                 §§push(Number((_loc7_ = param1 as TouchEvent).stageX));
                                 if(_loc9_ || _loc3_)
                                 {
                                    _loc2_ = §§pop();
                                    if(!_loc10_)
                                    {
                                       addr187:
                                       _loc3_ = Number(_loc7_.stageY);
                                       if(!_loc9_)
                                       {
                                       }
                                       §§goto(addr165);
                                    }
                                    _loc4_ = _loc7_.touchPointID;
                                    §§goto(addr165);
                                 }
                                 §§goto(addr187);
                              }
                           }
                           §§goto(addr79);
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr71);
                  }
               }
               §§goto(addr79);
            }
            §§goto(addr71);
         }
         §§goto(addr67);
      }
      
      private function get §;![§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §8V§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Program3D = null;
         if(_loc6_)
         {
            if(param1 in this.§`Y§)
            {
               if(!_loc5_)
               {
                  throw new Error("Another program with this name is already registered");
               }
            }
            if(this.§<n§ != null)
            {
               addr54:
               (_loc4_ = this.§<n§.createProgram()).upload(param2,param3);
               if(!(_loc5_ && param3))
               {
                  this.§`Y§[param1] = _loc4_;
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      public function §throw§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Program3D = this.§@!O§(param1);
         if(!(_loc4_ && this))
         {
            if(_loc2_)
            {
               if(_loc3_)
               {
                  _loc2_.dispose();
                  do
                  {
                     delete this.§`Y§[param1];
                  }
                  while(_loc4_);
                  
                  addr68:
               }
               §§goto(addr68);
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function §@!O§(param1:String) : Program3D
      {
         return this.§`Y§[param1] as Program3D;
      }
      
      public function §!P§(param1:String) : Boolean
      {
         return param1 in this.§`Y§;
      }
      
      public function get §]!W§() : Boolean
      {
         return this.§<!A§;
      }
      
      public function get §`!@§() : §]!N§
      {
         return this.§^!5§;
      }
      
      public function get §&?§() : Boolean
      {
         return this.§2!X§;
      }
      
      public function set §&?§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§2!X§ = param1;
            while(this.§<n§)
            {
               if(_loc3_ && this)
               {
                  break;
               }
               addr70:
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
               addr66:
               this.§2!S§.§&?§ = param1;
               §§goto(addr70);
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§ f§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§ f§ = param1;
         }
         while(this.§<n§)
         {
            if(!_loc2_)
            {
               break;
            }
            addr65:
            if(!(_loc2_ || _loc2_))
            {
               continue;
            }
            this.§<n§.enableErrorChecking = param1;
            §§goto(addr65);
         }
      }
      
      public function get §">§() : int
      {
         return this.§]q§;
      }
      
      public function set §">§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§]q§ = param1;
         }
         do
         {
            this.§"!]§();
         }
         while(!_loc3_);
         
      }
      
      public function get §>!D§() : Rectangle
      {
         return this.§9S§.clone();
      }
      
      public function set §>!D§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§9S§ = param1.clone();
            do
            {
               this.§"!]§();
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function get §]!<§() : Sprite
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:ContextMenu = null;
         if(!(_loc3_ && _loc1_))
         {
            if(this.§]S§ == null)
            {
               if(_loc2_ || _loc1_)
               {
                  addr37:
                  this.§]S§ = new Sprite();
               }
               _loc1_ = new ContextMenu();
               if(!(_loc3_ && this))
               {
                  _loc1_.hideBuiltInItems();
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        this.§]S§.contextMenu = _loc1_;
                        do
                        {
                           this.§^q§();
                        }
                        while(!(_loc2_ || _loc3_));
                        
                        if(_loc2_ || _loc2_)
                        {
                           while(false)
                           {
                              continue loop1;
                           }
                           addr101:
                           return this.§]S§;
                           addr80:
                        }
                        break;
                     }
                  }
               }
               §§goto(addr80);
            }
            §§goto(addr101);
         }
         §§goto(addr37);
      }
      
      public function get stage() : §]@§.Stage
      {
         return this.§6$§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §;Y§() : flash.display.Stage
      {
         return this.§8!#§;
      }
      
      public function get §+!<§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§2!Z§);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
   }
}
