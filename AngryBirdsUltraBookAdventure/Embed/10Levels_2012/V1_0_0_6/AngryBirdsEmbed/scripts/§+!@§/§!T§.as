package §+!@§
{
   import §%!6§.§!'§;
   import §>K§.§9X§;
   import com.rovio.assets.§!Q§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.text.Font;
   
   public class §!T§
   {
      
      private static var §6[§:§!T§;
       
      
      private var §0!'§:Vector.<XML>;
      
      private var §5X§:Boolean = false;
      
      private var §;g§:int;
      
      private var §?0§:int;
      
      private var §`2§:Function;
      
      private var §9q§:Function;
      
      private var § l§:Loader;
      
      private var §4!H§:URLLoader;
      
      private var §7A§:XML;
      
      private var §!!+§:String = "";
      
      private var §,!#§:int = 0;
      
      private var §3§:Vector.<String>;
      
      private var §>!2§:String = "external_assets/LoadTest.swf";
      
      private var §7i§:Boolean = false;
      
      private var §'!?§:Array;
      
      private var §7H§:String;
      
      private var §]X§:String;
      
      private var §2!+§:Number = 0;
      
      private var §const§:String = "";
      
      private var §0!1§:§#!G§;
      
      public function §!T§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§'!?§ = [];
            if(!(_loc2_ && _loc1_))
            {
               addr43:
               super();
            }
            return;
         }
         §§goto(addr43);
      }
      
      public static function get §@j§() : §!T§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§6[§);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || §!T§)
                  {
                     addr40:
                     §6[§ = new §!T§();
                  }
               }
               §§push(§6[§);
            }
            return §§pop();
         }
         §§goto(addr40);
      }
      
      public static function §`+§(param1:Loader, param2:XML) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(§§newactivation());
         if(_loc7_)
         {
            §§push(null);
            if(_loc7_)
            {
               §§pop().§§slot[3] = §§pop();
               if(!_loc8_)
               {
                  §§push(§§newactivation());
                  if(_loc7_ || §!T§)
                  {
                     §§goto(addr39);
                  }
                  §§goto(addr51);
               }
               §§goto(addr48);
            }
            §§goto(addr39);
         }
         addr39:
         §§pop().§§slot[4] = null;
         if(!(_loc8_ && §!T§))
         {
            addr48:
            §§push(§§newactivation());
            if(_loc7_)
            {
               addr51:
               §§pop().§§slot[1] = param1;
               §§goto(addr63);
            }
            §§pop().§§slot[2] = param2;
         }
         addr63:
         if(_loc7_ || param2)
         {
            §§push(§§newactivation());
         }
         var _loc4_:int = 0;
         var _loc5_:* = library.Asset;
         while(§§hasnext(_loc5_,_loc4_))
         {
            §§push(§§newactivation());
            if(!_loc8_)
            {
               §§pop().§§slot[3] = §§nextvalue(_loc4_,_loc5_);
               if(_loc7_)
               {
                  try
                  {
                     §§push(§§newactivation());
                     if(_loc7_ || _loc3_)
                     {
                        §§pop().§§slot[4] = loader.contentLoaderInfo.applicationDomain.getDefinition(asset.@name.toString()) as Class;
                        if(_loc7_)
                        {
                           §!Q§.dynamic(asset.@name.toString(),assetCls);
                           if(!_loc7_)
                           {
                              continue;
                           }
                           addr164:
                           if(asset.@registerFont.toString().toUpperCase() != "TRUE")
                           {
                              continue;
                           }
                           if(!_loc7_)
                           {
                              continue;
                           }
                        }
                     }
                     §§goto(addr164);
                  }
                  catch(e:ReferenceError)
                  {
                     throw new Error("Could not find asset class \'" + asset.@name + "\' in " + library.@swf);
                  }
                  §§goto(addr164);
               }
               Font.registerFont(assetCls);
               continue;
            }
            §§goto(addr164);
         }
      }
      
      public function §5@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§'!?§ = [];
         }
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§#!G§, param5:Function = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         this.§7H§ = param2;
         this.§]X§ = param3;
         if(_loc6_ || this)
         {
            this.§7i§ = true;
            this.§5X§ = false;
            this.§0!1§ = param4;
         }
         this.§`2§ = param5;
      }
      
      private function §`!E§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§7i§ = true;
            if(!_loc1_)
            {
               addr24:
               this.§5X§ = false;
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function §=P§() : Boolean
      {
         return this.§7i§;
      }
      
      public function §8!%§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§5X§);
            if(_loc1_ || _loc1_)
            {
               §§push(Boolean(§§pop()));
               if(!Boolean(§§pop()))
               {
                  if(_loc1_)
                  {
                     §§pop();
                     if(!_loc2_)
                     {
                        addr60:
                        §§push(this.§=P§());
                        if(!_loc2_)
                        {
                           addr65:
                           if(!§§pop())
                           {
                              if(!_loc2_)
                              {
                                 §§push(false);
                                 if(_loc1_)
                                 {
                                    §§goto(addr71);
                                 }
                                 else
                                 {
                                    §§goto(addr86);
                                 }
                              }
                              else
                              {
                                 addr82:
                                 this.§;g§ = 0;
                              }
                              §§goto(addr86);
                           }
                           else
                           {
                              this.§0!'§ = new Vector.<XML>();
                              if(_loc1_)
                              {
                                 §§goto(addr82);
                              }
                           }
                           addr86:
                           return §§pop();
                           §§push(true);
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr86);
               }
               §§goto(addr65);
            }
            addr71:
            return §§pop();
         }
         §§goto(addr60);
      }
      
      public function §0+§(param1:XML) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(this.§5X§);
            if(!_loc5_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc5_ && param1))
               {
                  addr30:
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        addr34:
                        §§pop();
                        if(_loc4_ || _loc2_)
                        {
                           §§push(this.§=P§());
                           if(!(_loc5_ && this))
                           {
                              §§goto(addr62);
                           }
                           addr62:
                           §§goto(addr61);
                        }
                        §§goto(addr65);
                     }
                     addr61:
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           addr65:
                           return;
                        }
                     }
                     else
                     {
                        addr83:
                        this.§0!'§.push(param1);
                        if(!_loc5_)
                        {
                           var _loc2_:*;
                           §§push((_loc2_ = this).§;g§);
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc3_:* = §§pop();
                           if(_loc4_)
                           {
                              _loc2_.§;g§ = _loc3_;
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr62);
               }
               §§goto(addr34);
            }
            §§goto(addr30);
         }
         §§goto(addr83);
      }
      
      public function §>c§(param1:Function = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§5X§);
         if(_loc3_ || _loc2_)
         {
            §§push(Boolean(§§pop()));
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     §§pop();
                     if(!(_loc2_ && this))
                     {
                        §§push(this.§=P§());
                        if(_loc3_ || _loc2_)
                        {
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr85);
                  }
               }
            }
            addr76:
            §§goto(addr75);
         }
         addr75:
         if(§§pop())
         {
            if(_loc3_)
            {
               return;
            }
         }
         else
         {
            this.§9q§ = param1;
            if(!_loc2_)
            {
               addr85:
               this.§;g§ = this.§0!'§.length;
               this.§5X§ = true;
               this.§=!;§();
            }
         }
      }
      
      private function §^!&§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§0!1§);
            if(_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc1_)
                     {
                        addr40:
                        §§pop();
                        if(_loc2_ || _loc1_)
                        {
                           addr48:
                           §§push(this.§0!1§);
                           if(_loc2_ || _loc1_)
                           {
                              §§push(§§pop().§ E§);
                              if(!(_loc1_ && _loc2_))
                              {
                                 §§push(!§§pop());
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    addr83:
                                    if(§§pop())
                                    {
                                       if(!_loc1_)
                                       {
                                          §§push(this.§0!1§);
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr95:
                                             §§pop().removeEventListener(Event.COMPLETE,this.§2X§);
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                §§goto(addr119);
                                             }
                                          }
                                          addr119:
                                          this.§0!1§.addEventListener(Event.COMPLETE,this.§2X§);
                                          if(_loc1_ && _loc2_)
                                          {
                                          }
                                          §§goto(addr141);
                                       }
                                       §§push(true);
                                       if(!(_loc1_ && this))
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr141);
                                    }
                                 }
                                 §§goto(addr141);
                              }
                              §§goto(addr83);
                           }
                           §§goto(addr95);
                        }
                        §§goto(addr119);
                     }
                     addr141:
                     return false;
                  }
                  §§goto(addr83);
               }
               §§goto(addr40);
            }
            §§goto(addr119);
         }
         §§goto(addr48);
      }
      
      private function §2X§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§0!1§.removeEventListener(Event.COMPLETE,this.§2X§);
            if(_loc2_ || _loc2_)
            {
               addr47:
               this.§=!;§();
            }
            return;
         }
         §§goto(addr47);
      }
      
      private function §=!;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§0!'§.length > 0)
            {
               if(!_loc1_)
               {
                  this.§7q§();
                  if(_loc1_ && _loc2_)
                  {
                     addr52:
                     this.§,<§();
                  }
               }
               §§goto(addr52);
            }
            else if(this.§6k§() >= 1)
            {
               if(!_loc1_)
               {
                  §§goto(addr52);
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      private function §7q§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = null;
         if(_loc3_)
         {
            §§push(Boolean(this.§5X§));
            §§push(Boolean(this.§5X§));
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§pop();
                     if(_loc3_)
                     {
                        §§push(Boolean(this.§=P§()));
                        if(!_loc2_)
                        {
                           addr44:
                           if(§§pop())
                           {
                              §§push(this.§^!&§());
                              if(_loc3_)
                              {
                                 addr49:
                                 if(§§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       return;
                                    }
                                    addr292:
                                    this.§ l§.load(new URLRequest(this.§const§),new LoaderContext(false,ApplicationDomain.currentDomain));
                                    §§goto(addr304);
                                 }
                                 else
                                 {
                                    §§push("");
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       _loc1_ = §§pop();
                                       if(!(_loc2_ && this))
                                       {
                                          §§push(this.§]X§);
                                          if(!_loc2_)
                                          {
                                             §§push(§§pop() == null);
                                             if(_loc3_ || _loc2_)
                                             {
                                                addr82:
                                                §§push(!§§pop());
                                                if(!§§pop())
                                                {
                                                   §§pop();
                                                   §§push(this.§]X§);
                                                   if(_loc3_ || this)
                                                   {
                                                      addr98:
                                                      if(§§pop().length > 0)
                                                      {
                                                         if(!(_loc2_ && _loc1_))
                                                         {
                                                            §§push("?version=");
                                                            if(!(_loc2_ && _loc3_))
                                                            {
                                                               addr118:
                                                               _loc1_ = §§pop() + this.§]X§;
                                                               addr117:
                                                               if(_loc3_)
                                                               {
                                                                  addr121:
                                                                  this.§2!+§ = 0;
                                                                  this.§7A§ = this.§0!'§.shift();
                                                                  if(_loc3_)
                                                                  {
                                                                     if(this.§7A§.localName() == "pack")
                                                                     {
                                                                        if(_loc3_ || _loc1_)
                                                                        {
                                                                           addr153:
                                                                           this.§4!H§ = new URLLoader();
                                                                           this.§4!H§.dataFormat = URLLoaderDataFormat.BINARY;
                                                                           if(!(_loc2_ && this))
                                                                           {
                                                                              this.§4!H§.addEventListener(Event.COMPLETE,this.§+!&§);
                                                                              this.§4!H§.addEventListener(IOErrorEvent.IO_ERROR,this.§9!=§);
                                                                              if(_loc3_ || _loc2_)
                                                                              {
                                                                                 this.§4!H§.addEventListener(ProgressEvent.PROGRESS,this.§ e§);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§goto(addr199);
                                                                                 }
                                                                                 §§goto(addr221);
                                                                              }
                                                                              §§goto(addr199);
                                                                           }
                                                                           addr199:
                                                                           this.§const§ = this.§7H§ + this.§7A§.@url.toString() + _loc1_;
                                                                           if(!_loc2_)
                                                                           {
                                                                              this.§4!H§.load(new URLRequest(this.§const§));
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr221:
                                                                              }
                                                                              §§goto(addr304);
                                                                           }
                                                                           addr233:
                                                                           this.§ l§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§45§);
                                                                           this.§ l§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§9!=§);
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              this.§ l§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§ e§);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§goto(addr276);
                                                                              }
                                                                              §§goto(addr292);
                                                                           }
                                                                        }
                                                                        §§goto(addr276);
                                                                     }
                                                                     else
                                                                     {
                                                                        this.§ l§ = new Loader();
                                                                        if(_loc3_ || this)
                                                                        {
                                                                           §§goto(addr233);
                                                                        }
                                                                     }
                                                                     §§goto(addr199);
                                                                  }
                                                                  §§goto(addr292);
                                                               }
                                                               §§goto(addr199);
                                                            }
                                                            §§goto(addr117);
                                                         }
                                                         §§goto(addr292);
                                                      }
                                                      §§goto(addr121);
                                                   }
                                                   §§goto(addr118);
                                                }
                                             }
                                          }
                                          §§goto(addr98);
                                       }
                                       §§goto(addr292);
                                    }
                                    §§goto(addr118);
                                 }
                                 §§goto(addr292);
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr292);
                        }
                        §§goto(addr49);
                     }
                     §§goto(addr153);
                  }
                  §§goto(addr82);
               }
               §§goto(addr44);
            }
            §§goto(addr82);
         }
         addr276:
         this.§const§ = this.§7H§ + this.§!!+§ + this.§7A§.@swf.toString() + _loc1_;
         if(_loc2_)
         {
         }
         addr304:
      }
      
      private function §9!=§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§const§);
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            this.§#?§();
         }
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§const§,§!'§.§^3§);
      }
      
      private function §+!&§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc2_)
         {
            this.§'!?§.push(this.§4!H§.data);
            if(this.§`2§ != null)
            {
               if(_loc5_ || _loc2_)
               {
                  this.§`2§(this.§4!H§.data);
               }
            }
            §§push(this.§0!1§);
            if(_loc5_ || this)
            {
               if(§§pop())
               {
                  this.§0!1§.§6!'§(this.§4!H§.data);
                  §§goto(addr68);
               }
               §§goto(addr84);
            }
            addr68:
            if(_loc5_)
            {
               addr84:
               this.§#?§();
               if(!(_loc4_ && this))
               {
                  var _loc2_:*;
                  §§push((_loc2_ = this).§?0§);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!_loc4_)
                  {
                     _loc2_.§?0§ = _loc3_;
                  }
                  addr108:
                  this.§=!;§();
               }
               §§goto(addr108);
            }
            return;
         }
         §§goto(addr108);
      }
      
      private function § e§(param1:ProgressEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§2!+§ = param1.bytesLoaded / param1.bytesTotal;
         }
      }
      
      private function §45§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            §`+§(this.§ l§,this.§7A§);
            if(!_loc5_)
            {
               this.§#?§();
               if(!(_loc5_ && param1))
               {
                  var _loc2_:*;
                  §§push((_loc2_ = this).§?0§);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!(_loc5_ && _loc2_))
                  {
                     _loc2_.§?0§ = _loc3_;
                  }
                  if(_loc4_ || param1)
                  {
                     addr92:
                     this.§=!;§();
                  }
                  return;
               }
            }
         }
         §§goto(addr92);
      }
      
      private function §#?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§ l§)
            {
               if(_loc1_)
               {
                  this.§ l§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§45§);
                  if(!_loc2_)
                  {
                     this.§ l§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§9!=§);
                     if(_loc1_ || this)
                     {
                        this.§ l§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§45§);
                        if(!(_loc2_ && _loc1_))
                        {
                           addr73:
                           this.§ l§ = null;
                           if(_loc1_)
                           {
                              §§goto(addr78);
                           }
                        }
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr78);
               }
               §§goto(addr88);
            }
            addr78:
            if(this.§4!H§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr88:
                  this.§4!H§.removeEventListener(Event.COMPLETE,this.§+!&§);
                  this.§4!H§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9!=§);
                  addr95:
                  if(_loc2_ && _loc1_)
                  {
                  }
                  §§goto(addr139);
               }
               this.§4!H§.removeEventListener(ProgressEvent.PROGRESS,this.§ e§);
               if(_loc1_ || _loc2_)
               {
                  this.§4!H§ = null;
               }
               §§goto(addr139);
            }
            this.§7A§ = null;
            addr139:
            return;
         }
         §§goto(addr73);
      }
      
      private function §,<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§2!+§ = 0;
            if(!_loc2_)
            {
               §§push(this.§9q§);
               if(_loc1_ || _loc1_)
               {
                  if(§§pop() != null)
                  {
                  }
                  §§goto(addr79);
               }
               §§pop().call();
               if(!(_loc2_ && _loc1_))
               {
                  this.§9q§ = null;
               }
            }
            addr79:
            if(!(_loc2_ && this))
            {
               addr66:
               §§push(this.§9q§);
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function §,w§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§2!+§ = 0;
            if(_loc1_ || _loc1_)
            {
               addr48:
               this.§5X§ = false;
               this.§;g§ = 0;
               if(!_loc2_)
               {
                  if(this.§0!'§)
                  {
                     this.§0!'§ = null;
                     if(_loc1_ || this)
                     {
                     }
                     §§goto(addr74);
                  }
               }
               this.§9q§ = null;
               this.§#?§();
            }
            addr74:
            return;
         }
         §§goto(addr48);
      }
      
      public function §6k§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!this.§=P§())
         {
            §9X§.log("[LoadManager] Init not complete yet!");
            if(_loc1_ || this)
            {
               §§push(0);
               if(!_loc2_)
               {
                  return §§pop();
               }
               §§goto(addr176);
            }
            else
            {
               addr177:
               §§push(this.§?0§ + this.§2!+§);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(§§pop() - 0.5);
                  if(_loc1_ || this)
                  {
                     §§push(§§pop() / this.§;g§);
                     if(_loc2_ && _loc1_)
                     {
                        §§goto(addr227);
                     }
                  }
                  return §§pop();
               }
            }
         }
         else
         {
            §§push(this.§5X§);
            if(!(_loc2_ && _loc1_))
            {
               §§push(!§§pop());
               if(_loc1_)
               {
                  §§push(§§pop());
                  if(!(_loc2_ && _loc1_))
                  {
                     if(!§§pop())
                     {
                        if(!(_loc2_ && this))
                        {
                           §§pop();
                           §§push(!this.§0!'§);
                           if(_loc1_)
                           {
                              addr67:
                              §§push(§§pop());
                              if(!(_loc2_ && _loc1_))
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       addr78:
                                       §§pop();
                                       §§goto(addr82);
                                    }
                                    §§goto(addr164);
                                 }
                                 addr82:
                                 if(!this.§=P§())
                                 {
                                    if(_loc1_ || this)
                                    {
                                       §9X§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
                                       return -1;
                                    }
                                    addr164:
                                    if(this.§0!1§.§ E§)
                                    {
                                       if(_loc1_ || this)
                                       {
                                          §§push(1);
                                       }
                                       else
                                       {
                                          addr222:
                                          addr227:
                                          return §§pop();
                                          §§push(this.§?0§ / this.§;g§);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr177);
                                    }
                                    §§goto(addr227);
                                 }
                                 else
                                 {
                                    §§push(this.§?0§);
                                    if(_loc1_)
                                    {
                                       §§push(this.§;g§);
                                       if(!_loc2_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc1_ || _loc2_)
                                             {
                                                §§push(this.§0!1§);
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      addr139:
                                                      if(§§pop())
                                                      {
                                                         §§pop();
                                                         addr141:
                                                         §§push(this.§;g§);
                                                         if(_loc1_)
                                                         {
                                                            §§push(0);
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               addr153:
                                                               §§push(§§pop() > §§pop());
                                                               if(!_loc2_)
                                                               {
                                                                  addr156:
                                                                  if(!§§pop())
                                                                  {
                                                                     return 1;
                                                                  }
                                                                  if(!(_loc2_ && this))
                                                                  {
                                                                     §§goto(addr164);
                                                                  }
                                                                  §§goto(addr222);
                                                               }
                                                               §§goto(addr164);
                                                            }
                                                         }
                                                         §§goto(addr222);
                                                      }
                                                   }
                                                   §§goto(addr156);
                                                }
                                                §§goto(addr164);
                                             }
                                             §§goto(addr141);
                                          }
                                          §§goto(addr222);
                                       }
                                       §§goto(addr153);
                                    }
                                 }
                                 addr176:
                                 return §§pop();
                              }
                           }
                           §§goto(addr139);
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr67);
                  }
                  §§goto(addr139);
               }
            }
            §§goto(addr67);
         }
         §§goto(addr227);
      }
   }
}
