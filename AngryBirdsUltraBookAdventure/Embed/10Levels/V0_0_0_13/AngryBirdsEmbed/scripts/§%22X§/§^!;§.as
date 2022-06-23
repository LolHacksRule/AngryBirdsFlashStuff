package §"X§
{
   import § !;§.§=-§;
   import §0!<§.§#y§;
   import com.rovio.assets.§,u§;
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
   
   public class §^!;§
   {
      
      private static var §6!3§:§^!;§;
       
      
      private var §3!-§:Vector.<XML>;
      
      private var §-C§:Boolean = false;
      
      private var §2Q§:int;
      
      private var §"!$§:int;
      
      private var §@,§:Function;
      
      private var §1D§:Function;
      
      private var §^!#§:Loader;
      
      private var §+z§:URLLoader;
      
      private var §,!9§:XML;
      
      private var §[7§:String = "";
      
      private var §"a§:int = 0;
      
      private var §41§:Vector.<String>;
      
      private var §59§:String = "external_assets/LoadTest.swf";
      
      private var §0h§:Boolean = false;
      
      private var §7q§:Array;
      
      private var §3#§:String;
      
      private var §?M§:String;
      
      private var §;S§:Number = 0;
      
      private var §<g§:String = "";
      
      private var §!L§:§&?§;
      
      public function §^!;§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§7q§ = [];
            if(!(_loc2_ && _loc1_))
            {
               addr43:
               super();
            }
            return;
         }
         §§goto(addr43);
      }
      
      public static function get §-]§() : §^!;§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§6!3§);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || §^!;§)
                  {
                     addr40:
                     §6!3§ = new §^!;§();
                  }
               }
               §§push(§6!3§);
            }
            return §§pop();
         }
         §§goto(addr40);
      }
      
      public static function §1!%§(param1:Loader, param2:XML) : void
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
                  if(_loc7_ || §^!;§)
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
         if(!(_loc8_ && §^!;§))
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
                           §,u§.§^2§(asset.@name.toString(),assetCls);
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
      
      public function §8!$§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§7q§ = [];
         }
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§&?§, param5:Function = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         this.§3#§ = param2;
         this.§?M§ = param3;
         if(_loc6_ || this)
         {
            this.§0h§ = true;
            this.§-C§ = false;
            this.§!L§ = param4;
         }
         this.§@,§ = param5;
      }
      
      private function §`N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§0h§ = true;
            if(!_loc1_)
            {
               addr24:
               this.§-C§ = false;
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function §;d§() : Boolean
      {
         return this.§0h§;
      }
      
      public function §9y§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§-C§);
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
                        §§push(this.§;d§());
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
                                 this.§2Q§ = 0;
                              }
                              §§goto(addr86);
                           }
                           else
                           {
                              this.§3!-§ = new Vector.<XML>();
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
      
      public function §6j§(param1:XML) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(this.§-C§);
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
                           §§push(this.§;d§());
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
                        this.§3!-§.push(param1);
                        if(!_loc5_)
                        {
                           var _loc2_:*;
                           §§push((_loc2_ = this).§2Q§);
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc3_:* = §§pop();
                           if(_loc4_)
                           {
                              _loc2_.§2Q§ = _loc3_;
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
      
      public function §7s§(param1:Function = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§-C§);
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
                        §§push(this.§;d§());
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
            this.§1D§ = param1;
            if(!_loc2_)
            {
               addr85:
               this.§2Q§ = this.§3!-§.length;
               this.§-C§ = true;
               this.§`W§();
            }
         }
      }
      
      private function §'W§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§!L§);
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
                           §§push(this.§!L§);
                           if(_loc2_ || _loc1_)
                           {
                              §§push(§§pop().§98§);
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
                                          §§push(this.§!L§);
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr95:
                                             §§pop().removeEventListener(Event.COMPLETE,this.§%=§);
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                §§goto(addr119);
                                             }
                                          }
                                          addr119:
                                          this.§!L§.addEventListener(Event.COMPLETE,this.§%=§);
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
      
      private function §%=§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§!L§.removeEventListener(Event.COMPLETE,this.§%=§);
            if(_loc2_ || _loc2_)
            {
               addr47:
               this.§`W§();
            }
            return;
         }
         §§goto(addr47);
      }
      
      private function §`W§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§3!-§.length > 0)
            {
               if(!_loc1_)
               {
                  this.§?!#§();
                  if(_loc1_ && _loc2_)
                  {
                     addr52:
                     this.§7L§();
                  }
               }
               §§goto(addr52);
            }
            else if(this.§5x§() >= 1)
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
      
      private function §?!#§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = null;
         if(_loc3_)
         {
            §§push(Boolean(this.§-C§));
            §§push(Boolean(this.§-C§));
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§pop();
                     if(_loc3_)
                     {
                        §§push(Boolean(this.§;d§()));
                        if(!_loc2_)
                        {
                           addr44:
                           if(§§pop())
                           {
                              §§push(this.§'W§());
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
                                    this.§^!#§.load(new URLRequest(this.§<g§),new LoaderContext(false,ApplicationDomain.currentDomain));
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
                                          §§push(this.§?M§);
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
                                                   §§push(this.§?M§);
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
                                                               _loc1_ = §§pop() + this.§?M§;
                                                               addr117:
                                                               if(_loc3_)
                                                               {
                                                                  addr121:
                                                                  this.§;S§ = 0;
                                                                  this.§,!9§ = this.§3!-§.shift();
                                                                  if(_loc3_)
                                                                  {
                                                                     if(this.§,!9§.localName() == "pack")
                                                                     {
                                                                        if(_loc3_ || _loc1_)
                                                                        {
                                                                           addr153:
                                                                           this.§+z§ = new URLLoader();
                                                                           this.§+z§.dataFormat = URLLoaderDataFormat.BINARY;
                                                                           if(!(_loc2_ && this))
                                                                           {
                                                                              this.§+z§.addEventListener(Event.COMPLETE,this.§>M§);
                                                                              this.§+z§.addEventListener(IOErrorEvent.IO_ERROR,this.§?!<§);
                                                                              if(_loc3_ || _loc2_)
                                                                              {
                                                                                 this.§+z§.addEventListener(ProgressEvent.PROGRESS,this.§`!@§);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§goto(addr199);
                                                                                 }
                                                                                 §§goto(addr221);
                                                                              }
                                                                              §§goto(addr199);
                                                                           }
                                                                           addr199:
                                                                           this.§<g§ = this.§3#§ + this.§,!9§.@url.toString() + _loc1_;
                                                                           if(!_loc2_)
                                                                           {
                                                                              this.§+z§.load(new URLRequest(this.§<g§));
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr221:
                                                                              }
                                                                              §§goto(addr304);
                                                                           }
                                                                           addr233:
                                                                           this.§^!#§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§>`§);
                                                                           this.§^!#§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§?!<§);
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              this.§^!#§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§`!@§);
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
                                                                        this.§^!#§ = new Loader();
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
         this.§<g§ = this.§3#§ + this.§[7§ + this.§,!9§.@swf.toString() + _loc1_;
         if(_loc2_)
         {
         }
         addr304:
      }
      
      private function §?!<§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§<g§);
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            this.§^0§();
         }
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§<g§,§=-§.§&^§);
      }
      
      private function §>M§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc2_)
         {
            this.§7q§.push(this.§+z§.data);
            if(this.§@,§ != null)
            {
               if(_loc5_ || _loc2_)
               {
                  this.§@,§(this.§+z§.data);
               }
            }
            §§push(this.§!L§);
            if(_loc5_ || this)
            {
               if(§§pop())
               {
                  this.§!L§.§?s§(this.§+z§.data);
                  §§goto(addr68);
               }
               §§goto(addr84);
            }
            addr68:
            if(_loc5_)
            {
               addr84:
               this.§^0§();
               if(!(_loc4_ && this))
               {
                  var _loc2_:*;
                  §§push((_loc2_ = this).§"!$§);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!_loc4_)
                  {
                     _loc2_.§"!$§ = _loc3_;
                  }
                  addr108:
                  this.§`W§();
               }
               §§goto(addr108);
            }
            return;
         }
         §§goto(addr108);
      }
      
      private function §`!@§(param1:ProgressEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§;S§ = param1.bytesLoaded / param1.bytesTotal;
         }
      }
      
      private function §>`§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            §1!%§(this.§^!#§,this.§,!9§);
            if(!_loc5_)
            {
               this.§^0§();
               if(!(_loc5_ && param1))
               {
                  var _loc2_:*;
                  §§push((_loc2_ = this).§"!$§);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!(_loc5_ && _loc2_))
                  {
                     _loc2_.§"!$§ = _loc3_;
                  }
                  if(_loc4_ || param1)
                  {
                     addr92:
                     this.§`W§();
                  }
                  return;
               }
            }
         }
         §§goto(addr92);
      }
      
      private function §^0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§^!#§)
            {
               if(_loc1_)
               {
                  this.§^!#§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§>`§);
                  if(!_loc2_)
                  {
                     this.§^!#§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§?!<§);
                     if(_loc1_ || this)
                     {
                        this.§^!#§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§>`§);
                        if(!(_loc2_ && _loc1_))
                        {
                           addr73:
                           this.§^!#§ = null;
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
            if(this.§+z§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr88:
                  this.§+z§.removeEventListener(Event.COMPLETE,this.§>M§);
                  this.§+z§.removeEventListener(IOErrorEvent.IO_ERROR,this.§?!<§);
                  addr95:
                  if(_loc2_ && _loc1_)
                  {
                  }
                  §§goto(addr139);
               }
               this.§+z§.removeEventListener(ProgressEvent.PROGRESS,this.§`!@§);
               if(_loc1_ || _loc2_)
               {
                  this.§+z§ = null;
               }
               §§goto(addr139);
            }
            this.§,!9§ = null;
            addr139:
            return;
         }
         §§goto(addr73);
      }
      
      private function §7L§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§;S§ = 0;
            if(!_loc2_)
            {
               §§push(this.§1D§);
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
                  this.§1D§ = null;
               }
            }
            addr79:
            if(!(_loc2_ && this))
            {
               addr66:
               §§push(this.§1D§);
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function §;,§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§;S§ = 0;
            if(_loc1_ || _loc1_)
            {
               addr48:
               this.§-C§ = false;
               this.§2Q§ = 0;
               if(!_loc2_)
               {
                  if(this.§3!-§)
                  {
                     this.§3!-§ = null;
                     if(_loc1_ || this)
                     {
                     }
                     §§goto(addr74);
                  }
               }
               this.§1D§ = null;
               this.§^0§();
            }
            addr74:
            return;
         }
         §§goto(addr48);
      }
      
      public function §5x§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!this.§;d§())
         {
            §#y§.log("[LoadManager] Init not complete yet!");
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
               §§push(this.§"!$§ + this.§;S§);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(§§pop() - 0.5);
                  if(_loc1_ || this)
                  {
                     §§push(§§pop() / this.§2Q§);
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
            §§push(this.§-C§);
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
                           §§push(!this.§3!-§);
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
                                 if(!this.§;d§())
                                 {
                                    if(_loc1_ || this)
                                    {
                                       §#y§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
                                       return -1;
                                    }
                                    addr164:
                                    if(this.§!L§.§98§)
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
                                          §§push(this.§"!$§ / this.§2Q§);
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
                                    §§push(this.§"!$§);
                                    if(_loc1_)
                                    {
                                       §§push(this.§2Q§);
                                       if(!_loc2_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc1_ || _loc2_)
                                             {
                                                §§push(this.§!L§);
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
                                                         §§push(this.§2Q§);
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
