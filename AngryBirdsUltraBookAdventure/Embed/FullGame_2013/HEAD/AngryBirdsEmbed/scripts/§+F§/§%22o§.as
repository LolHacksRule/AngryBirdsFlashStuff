package §+F§
{
   import §+!B§.§]!8§;
   import §3a§.§7!+§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.Dictionary;
   
   public class §"o§
   {
      
      private static var §%I§:§"o§;
       
      
      private var §3?§:Vector.<XML>;
      
      private var §[!G§:Boolean = false;
      
      private var §<!5§:int;
      
      private var §#@§:int;
      
      private var §9"§:Function;
      
      private var §^K§:Function;
      
      private var §;$§:Loader;
      
      private var §64§:URLLoader;
      
      private var §@>§:XML;
      
      private var §,5§:String = "";
      
      private var §,X§:int = 0;
      
      private var §`L§:Vector.<String>;
      
      private var §4-§:String = "external_assets/LoadTest.swf";
      
      private var §%0§:Boolean = false;
      
      private var §^S§:Array;
      
      private var §6!-§:String;
      
      private var §1p§:String;
      
      private var §[N§:Dictionary;
      
      private var §,!1§:String = "";
      
      private var §2!C§:Number = 0;
      
      private var §-O§:String = "";
      
      private var §9o§:§9w§;
      
      private var §>[§:Object;
      
      public function §"o§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§^S§ = [];
            if(_loc2_ || _loc1_)
            {
               this.§[N§ = new Dictionary();
               if(!_loc2_)
               {
               }
               §§goto(addr52);
            }
            super();
         }
         addr52:
      }
      
      public static function get §@6§() : §"o§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §"o§)
         {
            §§push(§%I§);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     §%I§ = new §"o§();
                     addr44:
                     §§push(§%I§);
                  }
               }
               §§goto(addr44);
            }
            return §§pop();
         }
         §§goto(addr44);
      }
      
      public static function § else§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §3l§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§^S§ = [];
         }
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§9w§, param5:Function = null, param6:String = "") : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         this.§6!-§ = param2;
         if(_loc8_ || param3)
         {
            this.§1p§ = param3;
            if(_loc8_ || param2)
            {
               this.§%0§ = true;
               if(!_loc7_)
               {
                  this.§[!G§ = false;
                  this.§9o§ = param4;
                  if(!_loc7_)
                  {
                     this.§9"§ = param5;
                     if(_loc8_)
                     {
                        §§push(param6);
                        if(_loc8_ || param1)
                        {
                           §§push(§§pop() == null);
                           if(_loc8_ || param3)
                           {
                              §§push(!§§pop());
                              if(!_loc7_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc8_ || param1)
                                    {
                                       addr94:
                                       §§pop();
                                       §§goto(addr136);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc8_ || param3)
                                    {
                                       addr131:
                                       this.§>[§ = JSON.parse(param6);
                                    }
                                    §§goto(addr136);
                                 }
                                 addr136:
                                 if(!(_loc7_ && param1))
                                 {
                                    addr113:
                                    §§push(param6 == "");
                                    if(_loc8_ || param3)
                                    {
                                       §§push(!§§pop());
                                    }
                                 }
                                 return;
                              }
                           }
                           §§goto(addr94);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr113);
               }
               §§goto(addr94);
            }
         }
         §§goto(addr131);
      }
      
      private function §,0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§%0§ = true;
            if(!(_loc2_ && _loc1_))
            {
               addr28:
               this.§[!G§ = false;
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function §38§() : Boolean
      {
         return this.§%0§;
      }
      
      public function §6!§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§[!G§);
            if(_loc1_ || _loc1_)
            {
               §§push(Boolean(§§pop()));
               if(!Boolean(§§pop()))
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     if(_loc1_)
                     {
                        §§push(!this.§38§());
                        if(_loc1_ || this)
                        {
                           addr70:
                           if(§§pop())
                           {
                              if(_loc1_ || _loc1_)
                              {
                                 return false;
                              }
                              addr95:
                              this.§<!5§ = 0;
                              addr99:
                              return true;
                              addr98:
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr99);
                     }
                     this.§3?§ = new Vector.<XML>();
                     if(_loc2_ && _loc1_)
                     {
                     }
                     §§goto(addr95);
                  }
               }
               §§goto(addr70);
            }
         }
         §§goto(addr95);
      }
      
      public function §]<§(param1:XML) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(this.§[!G§);
            if(!(_loc5_ && this))
            {
               §§push(Boolean(§§pop()));
               if(_loc4_ || param1)
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        §§goto(addr39);
                     }
                  }
                  §§goto(addr67);
               }
            }
            addr39:
            §§pop();
            if(_loc4_ || _loc3_)
            {
               §§push(this.§38§());
               if(_loc4_ || _loc3_)
               {
                  addr67:
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        §§goto(addr80);
                     }
                  }
                  else
                  {
                     this.§3?§.push(param1);
                     if(_loc4_)
                     {
                        var _loc2_:*;
                        §§push((_loc2_ = this).§<!5§);
                        if(!(_loc5_ && param1))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc3_:* = §§pop();
                        if(_loc4_)
                        {
                           _loc2_.§<!5§ = _loc3_;
                        }
                     }
                  }
               }
               §§goto(addr67);
            }
            return;
         }
         addr80:
      }
      
      public function §^]§(param1:Function = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§[!G§);
         if(_loc3_)
         {
            §§push(Boolean(§§pop()));
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr28:
                     §§pop();
                     if(_loc3_ || _loc2_)
                     {
                        §§push(this.§38§());
                        if(_loc2_ && this)
                        {
                        }
                        §§goto(addr66);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr66);
               }
            }
            addr66:
            if(§§pop())
            {
               if(!_loc2_)
               {
                  addr69:
                  return;
               }
            }
            else
            {
               this.§^K§ = param1;
               if(!_loc2_)
               {
                  this.§<!5§ = this.§3?§.length;
                  if(!_loc3_)
                  {
                  }
                  §§goto(addr92);
               }
               this.§[!G§ = true;
            }
            addr92:
            this.§25§();
            return;
         }
         §§goto(addr28);
      }
      
      private function §]>§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§9o§);
            if(_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || _loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc1_)
                     {
                        §§pop();
                        if(!_loc1_)
                        {
                           addr43:
                           §§push(this.§9o§);
                           if(_loc2_)
                           {
                              §§push(§§pop().§1!E§);
                              if(!(_loc1_ && this))
                              {
                                 §§goto(addr65);
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr90);
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr73);
               }
               addr65:
               §§push(!§§pop());
               if(_loc2_ || _loc1_)
               {
                  addr73:
                  if(§§pop())
                  {
                     if(!(_loc1_ && this))
                     {
                        §§push(this.§9o§);
                        if(_loc2_ || _loc2_)
                        {
                           addr90:
                           §§pop().removeEventListener(Event.COMPLETE,this.§ `§);
                           if(_loc2_ || _loc1_)
                           {
                              addr114:
                              this.§9o§.addEventListener(Event.COMPLETE,this.§ `§);
                              if(_loc1_ && this)
                              {
                              }
                              §§goto(addr136);
                           }
                           §§push(true);
                           if(_loc2_ || _loc1_)
                           {
                              §§goto(addr134);
                           }
                           else
                           {
                              §§goto(addr136);
                           }
                        }
                        §§goto(addr114);
                     }
                  }
                  addr136:
                  return false;
               }
               addr134:
               return §§pop();
            }
            §§goto(addr114);
         }
         §§goto(addr43);
      }
      
      private function § `§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§9o§.removeEventListener(Event.COMPLETE,this.§ `§);
            if(!(_loc3_ && param1))
            {
               addr32:
               this.§25§();
            }
            return;
         }
         §§goto(addr32);
      }
      
      private function §25§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§3?§.length > 0)
            {
               if(!(_loc2_ && _loc1_))
               {
                  §§goto(addr55);
               }
            }
            else if(this.§;W§() >= 1)
            {
               if(_loc1_ || _loc2_)
               {
                  §§goto(addr76);
               }
            }
            §§goto(addr76);
         }
         addr55:
         this.§5g§();
         if(!(_loc1_ || _loc1_))
         {
            addr76:
            this.§<H§();
            §§goto(addr78);
         }
         addr78:
      }
      
      private function §5g§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(!_loc5_)
         {
            §§push(Boolean(this.§[!G§));
            §§push(Boolean(this.§[!G§));
            if(_loc4_)
            {
               if(§§pop())
               {
                  §§pop();
                  §§push(Boolean(this.§38§()));
                  if(!_loc5_)
                  {
                     §§goto(addr40);
                  }
                  §§goto(addr45);
               }
               addr40:
               if(§§pop())
               {
                  §§push(this.§]>§());
                  if(!_loc5_)
                  {
                     addr45:
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           return;
                        }
                        addr74:
                        if(this.§1p§.length > 0)
                        {
                           if(_loc4_ || _loc1_)
                           {
                              §§push("?version=");
                              if(!(_loc5_ && this))
                              {
                                 addr95:
                                 §§push(§§pop() + this.§1p§);
                              }
                              _loc1_ = §§pop();
                              addr100:
                              this.§2!C§ = 0;
                              this.§@>§ = this.§3?§.shift();
                              if(this.§@>§.localName() == "pack")
                              {
                                 §§push(this.§6!-§ + this.§@>§.@url.toString());
                                 if(_loc4_ || _loc1_)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc4_ || _loc1_)
                                    {
                                       if(this.§>[§)
                                       {
                                          §§push(this.§>[§[_loc2_]);
                                          if(_loc4_)
                                          {
                                             _loc2_ = §§pop();
                                             addr147:
                                             this.§64§ = new URLLoader();
                                             if(!(_loc5_ && this))
                                             {
                                                this.§64§.dataFormat = URLLoaderDataFormat.BINARY;
                                                this.§64§.addEventListener(Event.COMPLETE,this.§`&§);
                                                this.§64§.addEventListener(IOErrorEvent.IO_ERROR,this.§#!+§);
                                                if(!_loc5_)
                                                {
                                                   this.§64§.addEventListener(ProgressEvent.PROGRESS,this.§0D§);
                                                   if(!_loc5_)
                                                   {
                                                      this.§-O§ = _loc2_ + _loc1_;
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         this.§64§.load(new URLRequest(this.§-O§));
                                                      }
                                                      else
                                                      {
                                                         addr277:
                                                         this.§64§.load(new URLRequest(this.§-O§));
                                                         if(_loc5_ && this)
                                                         {
                                                            addr407:
                                                            this.§;$§.load(new URLRequest(this.§-O§),new LoaderContext(false,ApplicationDomain.currentDomain));
                                                         }
                                                      }
                                                      §§goto(addr419);
                                                   }
                                                }
                                                else
                                                {
                                                   addr252:
                                                   this.§64§.addEventListener(ProgressEvent.PROGRESS,this.§0D§);
                                                   this.§-O§ = this.§6!-§ + this.§@>§.@url.toString() + _loc1_;
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§goto(addr277);
                                                   }
                                                   §§goto(addr407);
                                                }
                                                §§goto(addr407);
                                             }
                                             §§goto(addr419);
                                          }
                                          else
                                          {
                                             addr317:
                                             _loc3_ = §§pop();
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                addr325:
                                                if(this.§>[§)
                                                {
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      addr340:
                                                      _loc3_ = this.§>[§[_loc3_];
                                                      addr341:
                                                      this.§;$§ = new Loader();
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         this.§;$§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§^!1§);
                                                         this.§;$§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§#!+§);
                                                         if(_loc5_ && _loc3_)
                                                         {
                                                         }
                                                      }
                                                      §§goto(addr407);
                                                   }
                                                }
                                                §§goto(addr341);
                                             }
                                             this.§;$§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§0D§);
                                             if(!(_loc5_ && this))
                                             {
                                                this.§-O§ = _loc3_ + _loc1_;
                                                if(_loc5_)
                                                {
                                                }
                                                §§goto(addr419);
                                             }
                                          }
                                          §§goto(addr407);
                                       }
                                       §§goto(addr147);
                                    }
                                    else
                                    {
                                       addr230:
                                       this.§64§ = new URLLoader();
                                       if(!_loc5_)
                                       {
                                          this.§64§.addEventListener(Event.COMPLETE,this.§1]§);
                                          if(_loc4_)
                                          {
                                             addr245:
                                             this.§64§.addEventListener(IOErrorEvent.IO_ERROR,this.§#!+§);
                                          }
                                          §§goto(addr252);
                                       }
                                       else
                                       {
                                          §§goto(addr341);
                                       }
                                    }
                                    §§goto(addr341);
                                 }
                              }
                              else
                              {
                                 if(this.§@>§.localName() == "xml")
                                 {
                                    addr223:
                                    this.§,!1§ = this.§@>§.@name;
                                    if(_loc4_)
                                    {
                                       §§goto(addr230);
                                    }
                                    else
                                    {
                                       §§goto(addr325);
                                    }
                                 }
                                 else
                                 {
                                    §§push(this.§6!-§);
                                    if(_loc4_ || _loc2_)
                                    {
                                       §§push(§§pop() + this.§,5§ + this.§@>§.@swf.toString());
                                       if(_loc4_ || this)
                                       {
                                          §§goto(addr317);
                                       }
                                       §§goto(addr340);
                                    }
                                    §§goto(addr317);
                                 }
                                 §§goto(addr317);
                              }
                              §§goto(addr317);
                           }
                           §§goto(addr325);
                        }
                        §§goto(addr100);
                     }
                     else
                     {
                        §§push("");
                        if(!_loc5_)
                        {
                           _loc1_ = §§pop();
                           §§push(this.§1p§ == null);
                           if(!_loc5_)
                           {
                              addr68:
                              §§push(!§§pop());
                              if(!§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    addr71:
                                    §§pop();
                                    if(!_loc5_)
                                    {
                                       §§goto(addr74);
                                    }
                                    §§goto(addr245);
                                 }
                              }
                              §§goto(addr74);
                           }
                           §§goto(addr71);
                        }
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr71);
               }
               addr419:
               return;
            }
            §§goto(addr68);
         }
         §§goto(addr223);
      }
      
      private function §#!+§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§-O§);
         if(_loc4_ || this)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.§?!;§();
         }
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§-O§,§]!8§.§>D§);
      }
      
      private function §1]§(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = new XML(this.§64§.data);
         if(_loc6_ || _loc3_)
         {
            this.§[N§[this.§,!1§] = _loc2_;
            if(!(_loc5_ && this))
            {
               this.§?!;§();
               if(_loc6_ || this)
               {
                  addr73:
                  var _loc3_:*;
                  §§push((_loc3_ = this).§#@§);
                  if(!_loc5_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc4_:* = §§pop();
                  if(_loc6_)
                  {
                     _loc3_.§#@§ = _loc4_;
                  }
                  if(!_loc5_)
                  {
                     this.§25§();
                  }
               }
            }
            return;
         }
         §§goto(addr73);
      }
      
      public function §1i§(param1:String) : XML
      {
         return this.§[N§[param1];
      }
      
      private function §`&§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            this.§^S§.push(this.§64§.data);
            if(!_loc4_)
            {
               if(this.§9"§ != null)
               {
                  if(_loc5_ || _loc2_)
                  {
                     this.§9"§(this.§64§.data);
                     if(_loc5_)
                     {
                        addr60:
                        §§push(this.§9o§);
                        if(_loc5_ || _loc3_)
                        {
                           if(§§pop())
                           {
                              if(!_loc4_)
                              {
                                 addr84:
                                 this.§9o§.§+X§(this.§64§.data);
                                 addr82:
                                 if(_loc5_)
                                 {
                                    addr90:
                                    this.§?!;§();
                                    if(!_loc4_)
                                    {
                                       addr94:
                                       var _loc2_:*;
                                       §§push((_loc2_ = this).§#@§);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc3_:* = §§pop();
                                       if(_loc5_)
                                       {
                                          _loc2_.§#@§ = _loc3_;
                                       }
                                    }
                                 }
                                 §§goto(addr111);
                              }
                              this.§25§();
                              addr111:
                              return;
                           }
                           §§goto(addr90);
                        }
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr94);
               }
               §§goto(addr60);
            }
            §§goto(addr94);
         }
         §§goto(addr82);
      }
      
      private function §0D§(param1:ProgressEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§2!C§ = param1.bytesLoaded / param1.bytesTotal;
         }
      }
      
      private function §^!1§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§?!;§();
            if(!_loc4_)
            {
               var _loc2_:*;
               §§push((_loc2_ = this).§#@§);
               if(_loc5_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(!(_loc4_ && _loc2_))
               {
                  _loc2_.§#@§ = _loc3_;
               }
               if(!(_loc4_ && _loc2_))
               {
                  addr70:
                  this.§25§();
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      private function §?!;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§;$§)
            {
               this.§;$§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§^!1§);
               if(!(_loc1_ && _loc1_))
               {
                  this.§;$§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§#!+§);
                  this.§;$§.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,this.§0D§);
                  this.§;$§ = null;
                  addr66:
                  if(this.§64§)
                  {
                     if(!_loc1_)
                     {
                        this.§64§.removeEventListener(Event.COMPLETE,this.§`&§);
                        this.§64§.removeEventListener(Event.COMPLETE,this.§1]§);
                        this.§64§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#!+§);
                        if(_loc2_)
                        {
                           addr104:
                           this.§64§.removeEventListener(ProgressEvent.PROGRESS,this.§0D§);
                           if(_loc2_)
                           {
                              addr113:
                              this.§64§ = null;
                              if(!(_loc1_ && this))
                              {
                                 addr123:
                                 this.§@>§ = null;
                              }
                           }
                        }
                        §§goto(addr113);
                     }
                     return;
                  }
                  §§goto(addr123);
               }
               §§goto(addr104);
            }
            §§goto(addr66);
         }
         §§goto(addr113);
      }
      
      private function §<H§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§2!C§ = 0;
            if(!_loc2_)
            {
               §§push(this.§^K§);
               if(!_loc2_)
               {
                  if(§§pop() != null)
                  {
                     if(!(_loc2_ && this))
                     {
                        addr48:
                        this.§^K§.call();
                        if(_loc1_)
                        {
                           addr51:
                           this.§^K§ = null;
                        }
                     }
                  }
                  return;
               }
               §§goto(addr48);
            }
            §§goto(addr51);
         }
         §§goto(addr48);
      }
      
      public function §1!8§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.§2!C§ = 0;
         this.§[!G§ = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§<!5§ = 0;
            if(_loc1_ || _loc2_)
            {
               addr59:
               if(this.§3?§)
               {
                  this.§3?§ = null;
                  if(!_loc1_)
                  {
                  }
                  §§goto(addr72);
               }
               this.§^K§ = null;
               if(_loc2_)
               {
               }
               §§goto(addr72);
            }
            addr72:
            this.§?!;§();
            return;
         }
         §§goto(addr59);
      }
      
      public function §;W§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!this.§38§())
         {
            §7!+§.log("[LoadManager] Init not complete yet!");
            if(_loc1_)
            {
               return 0;
            }
         }
         else
         {
            §§push(!this.§[!G§);
            if(!_loc2_)
            {
               §§push(§§pop());
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     §§pop();
                     if(_loc1_ || _loc2_)
                     {
                        addr53:
                        §§push(!this.§3?§);
                        §§push(!this.§3?§);
                        if(_loc1_)
                        {
                           if(!§§pop())
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§pop();
                                 if(!_loc2_)
                                 {
                                    addr67:
                                    §§push(this.§38§());
                                    if(_loc1_)
                                    {
                                       addr71:
                                       §§push(!§§pop());
                                       if(_loc1_)
                                       {
                                          addr74:
                                          if(§§pop())
                                          {
                                             if(!_loc2_)
                                             {
                                                §7!+§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
                                                if(!_loc2_)
                                                {
                                                   addr82:
                                                   §§push(-1);
                                                   if(_loc1_)
                                                   {
                                                      return §§pop();
                                                   }
                                                }
                                                else
                                                {
                                                   addr114:
                                                   §§push(this.§9o§);
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc1_)
                                                      {
                                                         addr127:
                                                         if(§§pop())
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               §§pop();
                                                               addr133:
                                                               §§push(this.§<!5§);
                                                               §§push(0);
                                                               if(!(_loc2_ && _loc1_))
                                                               {
                                                                  §§push(§§pop() > §§pop());
                                                                  if(_loc1_)
                                                                  {
                                                                     addr144:
                                                                     if(§§pop())
                                                                     {
                                                                        addr148:
                                                                        if(this.§9o§.§1!E§)
                                                                        {
                                                                           §§goto(addr149);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr151);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(1);
                                                                        if(_loc1_)
                                                                        {
                                                                           return §§pop();
                                                                        }
                                                                        §§goto(addr202);
                                                                     }
                                                                     §§goto(addr202);
                                                                  }
                                                                  §§goto(addr148);
                                                               }
                                                               §§goto(addr202);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr144);
                                                   }
                                                   §§goto(addr148);
                                                }
                                                §§goto(addr202);
                                             }
                                             §§goto(addr82);
                                          }
                                          else
                                          {
                                             §§push(this.§#@§);
                                             if(_loc1_)
                                             {
                                                §§push(this.§<!5§);
                                                if(!_loc2_)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         §§goto(addr114);
                                                      }
                                                      else
                                                      {
                                                         addr200:
                                                         §§push(this.§#@§);
                                                      }
                                                      §§goto(addr202);
                                                   }
                                                   §§goto(addr200);
                                                }
                                                §§goto(addr202);
                                             }
                                          }
                                          §§goto(addr133);
                                       }
                                       §§goto(addr148);
                                    }
                                    §§goto(addr74);
                                 }
                                 addr151:
                                 §§push(this.§#@§);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§push(§§pop() + this.§2!C§);
                                    if(_loc1_)
                                    {
                                       §§push(§§pop() - 0.5);
                                       if(_loc1_ || _loc2_)
                                       {
                                          §§push(§§pop() / this.§<!5§);
                                          if(!(_loc1_ || this))
                                          {
                                             §§goto(addr205);
                                          }
                                       }
                                       §§goto(addr205);
                                    }
                                    return §§pop();
                                 }
                                 addr202:
                                 §§push(§§pop() / this.§<!5§);
                                 addr205:
                                 return §§pop();
                              }
                              §§goto(addr71);
                           }
                           §§goto(addr74);
                        }
                        §§goto(addr127);
                     }
                     §§goto(addr67);
                  }
                  §§goto(addr53);
               }
               §§goto(addr127);
            }
            §§goto(addr53);
         }
         addr149:
         return 1;
      }
   }
}
