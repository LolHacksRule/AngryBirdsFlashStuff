package §?p§
{
   import § !G§.§ #§;
   import §#!F§.§^L§;
   import §1!K§.§<!I§;
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
   
   public class §@d§
   {
      
      private static var §#!'§:§@d§;
       
      
      private var §%!N§:Vector.<XML>;
      
      private var §9s§:Boolean = false;
      
      private var § !B§:int;
      
      private var §7!Q§:int;
      
      private var §+<§:Function;
      
      private var §<W§:Function;
      
      private var §1!!§:Loader;
      
      private var §&j§:URLLoader;
      
      private var §-T§:XML;
      
      private var §8!T§:String = "";
      
      private var §^!'§:int = 0;
      
      private var §0X§:Vector.<String>;
      
      private var §@!R§:String = "external_assets/LoadTest.swf";
      
      private var §&B§:Boolean = false;
      
      private var §[&§:Array;
      
      private var §9U§:String;
      
      private var §",§:String;
      
      private var §@!>§:Number = 0;
      
      private var §^!J§:String = "";
      
      private var §<8§:§`w§;
      
      public function §@d§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§[&§ = [];
            do
            {
               super();
            }
            while(_loc2_);
            
         }
      }
      
      public static function get §%!O§() : §@d§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(§#!'§);
            if(_loc1_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     addr54:
                     §#!'§ = new §@d§();
                  }
               }
               return §#!'§;
            }
         }
         §§goto(addr54);
      }
      
      public static function §<!N§(param1:Loader, param2:XML) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(!_loc7_)
                  {
                     §§push(null);
                     if(!(_loc7_ && param2))
                     {
                        §§pop().§§slot[4] = §§pop();
                        while(true)
                        {
                           if(!(_loc8_ || param2))
                           {
                              break;
                              addr44:
                           }
                           while(true)
                           {
                              §§push(§§newactivation());
                              while(_loc8_ || param2)
                              {
                                 §§pop().§§slot[1] = param1;
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                    §§pop().§§slot[2] = param2;
                                    if(!(_loc8_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    §§goto(addr35);
                                 }
                              }
                              continue loop3;
                           }
                           addr35:
                           if(!(_loc8_ || _loc3_))
                           {
                              continue;
                           }
                           if(true)
                           {
                              var _loc4_:int = 0;
                              var _loc5_:* = library.Asset;
                              addr211:
                              if(§§hasnext(_loc5_,_loc4_))
                              {
                                 §§push(§§newactivation());
                                 if(!(_loc7_ && §@d§))
                                 {
                                    §§pop().§§slot[3] = §§nextvalue(_loc4_,_loc5_);
                                    if(_loc8_)
                                    {
                                       try
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             addr125:
                                             §§pop().§§slot[4] = loader.contentLoaderInfo.applicationDomain.getDefinition(asset.@name.toString()) as Class;
                                             if(_loc8_ || param1)
                                             {
                                                §<!I§.§3! §(asset.@name.toString(),assetCls);
                                                if(!_loc7_)
                                                {
                                                   addr184:
                                                   if(asset.@registerFont.toString().toUpperCase() == "TRUE")
                                                   {
                                                      if(_loc7_ && §@d§)
                                                      {
                                                      }
                                                   }
                                                   §§goto(addr211);
                                                }
                                             }
                                             Font.registerFont(assetCls);
                                          }
                                       }
                                       catch(e:ReferenceError)
                                       {
                                          throw new Error("Could not find asset class \'" + asset.@name + "\' in " + library.@swf);
                                       }
                                       §§goto(addr184);
                                    }
                                    §§goto(addr211);
                                 }
                                 §§goto(addr125);
                              }
                              return;
                           }
                           §§goto(addr44);
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function §;3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§[&§ = [];
         }
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§`w§, param5:Function = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || this)
         {
            this.§9U§ = param2;
            loop0:
            while(true)
            {
               this.§",§ = param3;
               addr92:
               while(true)
               {
                  this.§&B§ = true;
                  continue loop0;
               }
            }
         }
         §§goto(addr87);
      }
      
      private function §=p§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§&B§ = true;
            do
            {
               this.§9s§ = false;
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      public function §&"§() : Boolean
      {
         return this.§&B§;
      }
      
      public function §@K§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§9s§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              this.§%!N§ = new Vector.<XML>();
                              loop7:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    while(true)
                                    {
                                       this.§ !B§ = 0;
                                       if(!(_loc1_ || _loc2_))
                                       {
                                          continue loop7;
                                       }
                                       if(_loc1_ || this)
                                       {
                                          §§push(true);
                                          if(_loc1_ || this)
                                          {
                                             addr33:
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                break;
                                             }
                                             addr105:
                                             addr105:
                                             while(true)
                                             {
                                                if(_loc1_ || _loc2_)
                                                {
                                                   continue loop0;
                                                }
                                                continue loop1;
                                                §§goto(addr33);
                                             }
                                             while(true)
                                             {
                                             }
                                             addr105:
                                             addr85:
                                          }
                                          else
                                          {
                                             §§goto(addr105);
                                          }
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                addr137:
                                                while(true)
                                                {
                                                   §§goto(addr85);
                                                }
                                             }
                                             addr136:
                                          }
                                          return §§pop();
                                       }
                                       if(_loc1_ || this)
                                       {
                                          continue loop6;
                                       }
                                       §§goto(addr137);
                                    }
                                    return §§pop();
                                    addr81:
                                 }
                                 addr104:
                                 §§push(false);
                                 §§goto(addr105);
                              }
                           }
                        }
                        §§goto(addr104);
                     }
                     addr102:
                  }
                  §§goto(addr136);
               }
            }
         }
         §§goto(addr81);
      }
      
      public function §%!9§(param1:XML) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this.§9s§);
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc5_ || this)
               {
                  if(!§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc5_)
                           {
                              return;
                           }
                           while(true)
                           {
                              addr27:
                              if(!(_loc5_ || param1))
                              {
                                 continue;
                              }
                              if(!(_loc4_ && _loc3_))
                              {
                                 if(true)
                                 {
                                    var _loc2_:*;
                                    §§push((_loc2_ = this).§ !B§);
                                    if(_loc5_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc3_:* = §§pop();
                                    if(!_loc4_)
                                    {
                                       _loc2_.§ !B§ = _loc3_;
                                    }
                                    §§goto(addr113);
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    §§push(this.§&"§());
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    if(!_loc4_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       break;
                                    }
                                    addr86:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop4;
                                    }
                                 }
                                 continue loop1;
                                 addr43:
                              }
                              while(true)
                              {
                                 §§goto(addr43);
                              }
                           }
                        }
                        while(true)
                        {
                           this.§%!N§.push(param1);
                           if(!_loc4_)
                           {
                              §§goto(addr27);
                           }
                           break;
                        }
                        §§goto(addr113);
                     }
                     continue;
                     addr68:
                  }
               }
               §§goto(addr86);
            }
         }
         addr113:
      }
      
      public function §;z§(param1:Function = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§9s§);
            if(!(_loc2_ && param1))
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr134:
                     while(true)
                     {
                        §§push(this.§&"§());
                        if(_loc3_ || _loc2_)
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           §§push(Boolean(§§pop()));
                        }
                        if(_loc2_ && this)
                        {
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        this.§<W§ = param1;
                        while(true)
                        {
                           this.§ !B§ = this.§%!N§.length;
                           for(; !(_loc2_ && this); while(!(_loc2_ && param1))
                           {
                              this.§2=§();
                              if(_loc3_ || param1)
                              {
                                 return;
                              }
                           })
                           {
                              if(_loc2_)
                              {
                                 continue loop4;
                              }
                              if(!(_loc2_ && _loc3_))
                              {
                                 this.§9s§ = true;
                                 continue;
                              }
                           }
                        }
                     }
                  }
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr134);
               }
            }
         }
      }
      
      private function §2!P§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§<8§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr133:
                        while(true)
                        {
                           §§push(this.§<8§);
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           §§push(§§pop().§+!8§);
                           while(true)
                           {
                              §§push(!§§pop());
                           }
                        }
                     }
                     addr132:
                  }
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ || _loc2_))
                           {
                              while(true)
                              {
                                 §§push(this.§<8§);
                                 if(!(_loc2_ || _loc1_))
                                 {
                                    continue loop0;
                                 }
                                 §§pop().addEventListener(Event.COMPLETE,this.§'b§);
                                 if(!_loc2_)
                                 {
                                    continue;
                                 }
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 §§goto(addr133);
                              }
                              §§push(true);
                           }
                           else
                           {
                              addr126:
                           }
                           §§push(this.§<8§);
                           continue loop0;
                           break;
                        }
                        §§push(false);
                        if(!(_loc2_ || this))
                        {
                           break;
                        }
                        if(!_loc2_)
                        {
                           continue;
                        }
                        if(!(_loc1_ && _loc2_))
                        {
                           if(!_loc1_)
                           {
                              break loop3;
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr92);
                     }
                     if(!_loc1_)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
                  return §§pop();
               }
               return §§pop();
            }
         }
         §§goto(addr133);
      }
      
      private function §'b§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§<8§.removeEventListener(Event.COMPLETE,this.§'b§);
            do
            {
               this.§2=§();
            }
            while(!_loc3_);
            
         }
      }
      
      private function §2=§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§%!N§.length <= 0)
            {
               if(this.§ O§() >= 1)
               {
                  if(_loc1_ || this)
                  {
                     if(!(_loc2_ && this))
                     {
                        if(_loc1_)
                        {
                           this.§!!9§();
                           addr24:
                           return;
                           addr73:
                        }
                        else
                        {
                           addr79:
                           this.§?f§();
                        }
                        §§goto(addr24);
                     }
                  }
                  §§goto(addr73);
               }
               §§goto(addr24);
            }
            §§goto(addr79);
         }
         §§goto(addr24);
      }
      
      private function §?f§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:String = null;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§9s§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  §§push(§§pop());
                  addr414:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr416:
                           while(true)
                           {
                              §§push(this.§&"§());
                              addr369:
                              do
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!(_loc2_ || _loc2_))
                                 {
                                    continue loop0;
                                 }
                              }
                              while(_loc2_);
                              
                              continue loop3;
                           }
                        }
                        addr415:
                     }
                     while(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§2!P§());
                           continue loop0;
                        }
                     }
                     addr27:
                     return;
                  }
               }
            }
            §§goto(addr415);
         }
         §§goto(addr381);
      }
      
      private function §+K§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§^!J§);
         if(_loc3_ || this)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            this.§2!8§();
         }
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§^!J§,§^L§.§2! §);
      }
      
      private function §<g§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§[&§.push(this.§&j§.data);
            if(!(_loc5_ && this))
            {
               if(this.§+<§ != null)
               {
                  while(true)
                  {
                     this.§+<§(this.§&j§.data);
                     addr87:
                     while(true)
                     {
                     }
                     addr51:
                     if(_loc5_ && _loc3_)
                     {
                        continue;
                     }
                     this.§<8§.§;!X§(this.§&j§.data);
                     addr60:
                     if(!_loc5_)
                     {
                        addr19:
                        this.§2!8§();
                        addr76:
                        if(_loc4_)
                        {
                           if(false)
                           {
                              while(true)
                              {
                                 §§push(this.§<8§);
                                 if(_loc4_ || _loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          if(!(_loc5_ && this))
                                          {
                                             §§goto(addr51);
                                          }
                                          else
                                          {
                                             §§goto(addr87);
                                          }
                                       }
                                       §§goto(addr76);
                                    }
                                    §§goto(addr19);
                                 }
                                 §§goto(addr60);
                              }
                              addr139:
                              this.§2=§();
                              return;
                              addr26:
                           }
                           var _loc2_:*;
                           §§push((_loc2_ = this).§7!Q§);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc3_:* = §§pop();
                           if(_loc4_ || _loc3_)
                           {
                              _loc2_.§7!Q§ = _loc3_;
                           }
                           if(!_loc5_)
                           {
                              §§goto(addr139);
                           }
                        }
                     }
                     §§goto(addr139);
                  }
               }
               §§goto(addr26);
               addr101:
            }
            §§goto(addr139);
         }
         §§goto(addr101);
      }
      
      private function §-!E§(param1:ProgressEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@!>§ = param1.bytesLoaded / param1.bytesTotal;
         }
      }
      
      private function § for§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §<!N§(this.§1!!§,this.§-T§);
            if(_loc4_)
            {
               this.§2!8§();
               if(_loc4_ || _loc2_)
               {
                  var _loc2_:*;
                  §§push((_loc2_ = this).§7!Q§);
                  if(_loc4_ || this)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!(_loc5_ && this))
                  {
                     _loc2_.§7!Q§ = _loc3_;
                  }
                  if(_loc4_ || param1)
                  {
                     addr87:
                     this.§2=§();
                  }
               }
            }
            return;
         }
         §§goto(addr87);
      }
      
      private function §2!8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§1!!§)
            {
               while(true)
               {
                  this.§1!!§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§ for§);
                  addr175:
                  loop9:
                  while(true)
                  {
                     this.§1!!§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§+K§);
                     addr153:
                     loop6:
                     while(true)
                     {
                        this.§1!!§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§ for§);
                        addr136:
                        while(true)
                        {
                           if(_loc2_ || _loc1_)
                           {
                              break loop6;
                           }
                           continue loop9;
                        }
                        continue loop9;
                     }
                     addr126:
                     this.§1!!§ = null;
                     addr126:
                  }
                  addr114:
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  this.§&j§.removeEventListener(IOErrorEvent.IO_ERROR,this.§+K§);
                  while(true)
                  {
                     if(_loc2_)
                     {
                        this.§&j§.removeEventListener(ProgressEvent.PROGRESS,this.§-!E§);
                        continue;
                     }
                     addr112:
                     while(!_loc1_)
                     {
                        §§goto(addr114);
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr153);
               }
            }
            while(true)
            {
               if(this.§&j§)
               {
                  if(_loc2_ || this)
                  {
                     this.§&j§.removeEventListener(Event.COMPLETE,this.§<g§);
                  }
                  §§goto(addr112);
               }
               §§goto(addr24);
               §§goto(addr126);
            }
         }
         §§goto(addr175);
      }
      
      private function §!!9§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§@!>§ = 0;
            loop0:
            while(true)
            {
               §§push(this.§<W§);
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop() != null)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§<W§);
                        addr76:
                        addr51:
                        while(true)
                        {
                           §§pop().call();
                           while(!_loc2_)
                           {
                              this.§<W§ = null;
                              if(_loc1_)
                              {
                                 continue loop1;
                              }
                           }
                           continue loop0;
                        }
                        addr51:
                     }
                  }
                  return;
               }
               §§goto(addr76);
            }
         }
         §§goto(addr51);
      }
      
      public function §3T§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§@!>§ = 0;
         }
         loop0:
         while(true)
         {
            this.§9s§ = false;
            loop1:
            while(true)
            {
               this.§ !B§ = 0;
               loop2:
               while(true)
               {
                  if(!this.§%!N§)
                  {
                     loop5:
                     while(true)
                     {
                        this.§<W§ = null;
                        while(_loc1_)
                        {
                           this.§2!8§();
                           if(!(_loc2_ && _loc2_))
                           {
                              addr38:
                              if(_loc1_ || _loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    break loop5;
                                 }
                                 continue loop2;
                                 addr45:
                              }
                              continue loop0;
                           }
                        }
                        continue loop1;
                     }
                  }
                  else
                  {
                     addr58:
                  }
                  continue;
                  return;
               }
            }
         }
      }
      
      public function § O§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§&"§());
            while(true)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     § #§.log("[LoadManager] Init not complete yet!");
                  }
                  addr315:
                  §§push(0);
               }
               else
               {
                  §§push(this.§9s§);
                  while(true)
                  {
                     §§push(!§§pop());
                     if(!_loc1_)
                     {
                        §§push(§§pop());
                        loop2:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              addr291:
                              while(true)
                              {
                                 §§pop();
                                 addr292:
                                 while(true)
                                 {
                                    §§push(!this.§%!N§);
                                 }
                              }
                              addr291:
                           }
                           while(true)
                           {
                              addr263:
                              while(true)
                              {
                                 §§push(§§pop());
                                 continue loop2;
                              }
                           }
                        }
                     }
                     §§goto(addr291);
                     if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     }
                     §§pop();
                     §§goto(addr282);
                  }
               }
               §§goto(addr295);
               if(!(_loc2_ || this))
               {
                  continue;
               }
               §§push(§§pop());
               if(!(_loc1_ && _loc2_))
               {
                  if(§§pop())
                  {
                     §§goto(addr224);
                  }
                  §§goto(addr130);
               }
               §§goto(addr264);
            }
         }
         §§goto(addr234);
      }
   }
}
