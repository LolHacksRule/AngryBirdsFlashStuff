package §9>§
{
   import §+!"§.§5!<§;
   import §4!H§.§1Q§;
   import com.rovio.assets.§'!H§;
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
   
   public class §"!C§
   {
      
      private static var §;R§:§"!C§;
       
      
      private var §>y§:Vector.<XML>;
      
      private var §#!B§:Boolean = false;
      
      private var §2!9§:int;
      
      private var §+!>§:int;
      
      private var §<%§:Function;
      
      private var §>U§:Function;
      
      private var §1@§:Loader;
      
      private var §!!A§:URLLoader;
      
      private var §]J§:XML;
      
      private var §`#§:String = "";
      
      private var §,!F§:int = 0;
      
      private var §8L§:Vector.<String>;
      
      private var §4m§:String = "external_assets/LoadTest.swf";
      
      private var §+O§:Boolean = false;
      
      private var §8e§:Array;
      
      private var §@m§:String;
      
      private var §4! §:String;
      
      private var §@4§:Number = 0;
      
      private var §6Y§:String = "";
      
      private var §9K§:§,!§;
      
      public function §"!C§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§8e§ = [];
            if(!(_loc2_ && _loc1_))
            {
               addr43:
               super();
            }
            return;
         }
         §§goto(addr43);
      }
      
      public static function get §^n§() : §"!C§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§;R§);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || §"!C§)
                  {
                     addr40:
                     §;R§ = new §"!C§();
                  }
               }
               §§push(§;R§);
            }
            return §§pop();
         }
         §§goto(addr40);
      }
      
      public static function §-!B§(param1:Loader, param2:XML) : void
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
                  if(_loc7_ || §"!C§)
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
         if(!(_loc8_ && §"!C§))
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
                           §'!H§.§4w§(asset.@name.toString(),assetCls);
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
      
      public function §#e§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§8e§ = [];
         }
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§,!§, param5:Function = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         this.§@m§ = param2;
         this.§4! § = param3;
         if(_loc6_ || this)
         {
            this.§+O§ = true;
            this.§#!B§ = false;
            this.§9K§ = param4;
         }
         this.§<%§ = param5;
      }
      
      private function §#!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§+O§ = true;
            if(!_loc1_)
            {
               addr24:
               this.§#!B§ = false;
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function §-6§() : Boolean
      {
         return this.§+O§;
      }
      
      public function §^E§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§#!B§);
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
                        §§push(this.§-6§());
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
                                 this.§2!9§ = 0;
                              }
                              §§goto(addr86);
                           }
                           else
                           {
                              this.§>y§ = new Vector.<XML>();
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
      
      public function §>!3§(param1:XML) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(this.§#!B§);
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
                           §§push(this.§-6§());
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
                        this.§>y§.push(param1);
                        if(!_loc5_)
                        {
                           var _loc2_:*;
                           §§push((_loc2_ = this).§2!9§);
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc3_:* = §§pop();
                           if(_loc4_)
                           {
                              _loc2_.§2!9§ = _loc3_;
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
      
      public function §7p§(param1:Function = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§#!B§);
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
                        §§push(this.§-6§());
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
            this.§>U§ = param1;
            if(!_loc2_)
            {
               addr85:
               this.§2!9§ = this.§>y§.length;
               this.§#!B§ = true;
               this.§#F§();
            }
         }
      }
      
      private function §%^§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§9K§);
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
                           §§push(this.§9K§);
                           if(_loc2_ || _loc1_)
                           {
                              §§push(§§pop().§4!+§);
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
                                          §§push(this.§9K§);
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr95:
                                             §§pop().removeEventListener(Event.COMPLETE,this.§!!,§);
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                §§goto(addr119);
                                             }
                                          }
                                          addr119:
                                          this.§9K§.addEventListener(Event.COMPLETE,this.§!!,§);
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
      
      private function §!!,§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§9K§.removeEventListener(Event.COMPLETE,this.§!!,§);
            if(_loc2_ || _loc2_)
            {
               addr47:
               this.§#F§();
            }
            return;
         }
         §§goto(addr47);
      }
      
      private function §#F§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§>y§.length > 0)
            {
               if(!_loc1_)
               {
                  this.§2J§();
                  if(_loc1_ && _loc2_)
                  {
                     addr52:
                     this.§8,§();
                  }
               }
               §§goto(addr52);
            }
            else if(this.§4"§() >= 1)
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
      
      private function §2J§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = null;
         if(_loc3_)
         {
            §§push(Boolean(this.§#!B§));
            §§push(Boolean(this.§#!B§));
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§pop();
                     if(_loc3_)
                     {
                        §§push(Boolean(this.§-6§()));
                        if(!_loc2_)
                        {
                           addr44:
                           if(§§pop())
                           {
                              §§push(this.§%^§());
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
                                    this.§1@§.load(new URLRequest(this.§6Y§),new LoaderContext(false,ApplicationDomain.currentDomain));
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
                                          §§push(this.§4! §);
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
                                                   §§push(this.§4! §);
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
                                                               _loc1_ = §§pop() + this.§4! §;
                                                               addr117:
                                                               if(_loc3_)
                                                               {
                                                                  addr121:
                                                                  this.§@4§ = 0;
                                                                  this.§]J§ = this.§>y§.shift();
                                                                  if(_loc3_)
                                                                  {
                                                                     if(this.§]J§.localName() == "pack")
                                                                     {
                                                                        if(_loc3_ || _loc1_)
                                                                        {
                                                                           addr153:
                                                                           this.§!!A§ = new URLLoader();
                                                                           this.§!!A§.dataFormat = URLLoaderDataFormat.BINARY;
                                                                           if(!(_loc2_ && this))
                                                                           {
                                                                              this.§!!A§.addEventListener(Event.COMPLETE,this.§8E§);
                                                                              this.§!!A§.addEventListener(IOErrorEvent.IO_ERROR,this.§01§);
                                                                              if(_loc3_ || _loc2_)
                                                                              {
                                                                                 this.§!!A§.addEventListener(ProgressEvent.PROGRESS,this.§1=§);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§goto(addr199);
                                                                                 }
                                                                                 §§goto(addr221);
                                                                              }
                                                                              §§goto(addr199);
                                                                           }
                                                                           addr199:
                                                                           this.§6Y§ = this.§@m§ + this.§]J§.@url.toString() + _loc1_;
                                                                           if(!_loc2_)
                                                                           {
                                                                              this.§!!A§.load(new URLRequest(this.§6Y§));
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr221:
                                                                              }
                                                                              §§goto(addr304);
                                                                           }
                                                                           addr233:
                                                                           this.§1@§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§%!9§);
                                                                           this.§1@§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§01§);
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              this.§1@§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§1=§);
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
                                                                        this.§1@§ = new Loader();
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
         this.§6Y§ = this.§@m§ + this.§`#§ + this.§]J§.@swf.toString() + _loc1_;
         if(_loc2_)
         {
         }
         addr304:
      }
      
      private function §01§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§6Y§);
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            this.§6N§();
         }
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§6Y§,§1Q§.§9!7§);
      }
      
      private function §8E§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc2_)
         {
            this.§8e§.push(this.§!!A§.data);
            if(this.§<%§ != null)
            {
               if(_loc5_ || _loc2_)
               {
                  this.§<%§(this.§!!A§.data);
               }
            }
            §§push(this.§9K§);
            if(_loc5_ || this)
            {
               if(§§pop())
               {
                  this.§9K§.§#!6§(this.§!!A§.data);
                  §§goto(addr68);
               }
               §§goto(addr84);
            }
            addr68:
            if(_loc5_)
            {
               addr84:
               this.§6N§();
               if(!(_loc4_ && this))
               {
                  var _loc2_:*;
                  §§push((_loc2_ = this).§+!>§);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!_loc4_)
                  {
                     _loc2_.§+!>§ = _loc3_;
                  }
                  addr108:
                  this.§#F§();
               }
               §§goto(addr108);
            }
            return;
         }
         §§goto(addr108);
      }
      
      private function §1=§(param1:ProgressEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§@4§ = param1.bytesLoaded / param1.bytesTotal;
         }
      }
      
      private function §%!9§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            §-!B§(this.§1@§,this.§]J§);
            if(!_loc5_)
            {
               this.§6N§();
               if(!(_loc5_ && param1))
               {
                  var _loc2_:*;
                  §§push((_loc2_ = this).§+!>§);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!(_loc5_ && _loc2_))
                  {
                     _loc2_.§+!>§ = _loc3_;
                  }
                  if(_loc4_ || param1)
                  {
                     addr92:
                     this.§#F§();
                  }
                  return;
               }
            }
         }
         §§goto(addr92);
      }
      
      private function §6N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§1@§)
            {
               if(_loc1_)
               {
                  this.§1@§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§%!9§);
                  if(!_loc2_)
                  {
                     this.§1@§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§01§);
                     if(_loc1_ || this)
                     {
                        this.§1@§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§%!9§);
                        if(!(_loc2_ && _loc1_))
                        {
                           addr73:
                           this.§1@§ = null;
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
            if(this.§!!A§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr88:
                  this.§!!A§.removeEventListener(Event.COMPLETE,this.§8E§);
                  this.§!!A§.removeEventListener(IOErrorEvent.IO_ERROR,this.§01§);
                  addr95:
                  if(_loc2_ && _loc1_)
                  {
                  }
                  §§goto(addr139);
               }
               this.§!!A§.removeEventListener(ProgressEvent.PROGRESS,this.§1=§);
               if(_loc1_ || _loc2_)
               {
                  this.§!!A§ = null;
               }
               §§goto(addr139);
            }
            this.§]J§ = null;
            addr139:
            return;
         }
         §§goto(addr73);
      }
      
      private function §8,§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§@4§ = 0;
            if(!_loc2_)
            {
               §§push(this.§>U§);
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
                  this.§>U§ = null;
               }
            }
            addr79:
            if(!(_loc2_ && this))
            {
               addr66:
               §§push(this.§>U§);
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function §`5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§@4§ = 0;
            if(_loc1_ || _loc1_)
            {
               addr48:
               this.§#!B§ = false;
               this.§2!9§ = 0;
               if(!_loc2_)
               {
                  if(this.§>y§)
                  {
                     this.§>y§ = null;
                     if(_loc1_ || this)
                     {
                     }
                     §§goto(addr74);
                  }
               }
               this.§>U§ = null;
               this.§6N§();
            }
            addr74:
            return;
         }
         §§goto(addr48);
      }
      
      public function §4"§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!this.§-6§())
         {
            §5!<§.log("[LoadManager] Init not complete yet!");
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
               §§push(this.§+!>§ + this.§@4§);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(§§pop() - 0.5);
                  if(_loc1_ || this)
                  {
                     §§push(§§pop() / this.§2!9§);
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
            §§push(this.§#!B§);
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
                           §§push(!this.§>y§);
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
                                 if(!this.§-6§())
                                 {
                                    if(_loc1_ || this)
                                    {
                                       §5!<§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
                                       return -1;
                                    }
                                    addr164:
                                    if(this.§9K§.§4!+§)
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
                                          §§push(this.§+!>§ / this.§2!9§);
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
                                    §§push(this.§+!>§);
                                    if(_loc1_)
                                    {
                                       §§push(this.§2!9§);
                                       if(!_loc2_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc1_ || _loc2_)
                                             {
                                                §§push(this.§9K§);
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
                                                         §§push(this.§2!9§);
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
