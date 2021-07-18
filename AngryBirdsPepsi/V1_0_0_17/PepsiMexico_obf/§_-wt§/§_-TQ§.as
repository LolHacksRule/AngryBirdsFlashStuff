package §_-wt§
{
   import §_-0S§.§_-z1§;
   import §_-IV§.§_-tX§;
   import §_-e3§.§_-54§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §_-TQ§
   {
      
      private static var §_-NF§:Vector.<XML>;
      
      private static var §_-Qo§:Boolean = false;
      
      private static var §_-ip§:int;
      
      private static var §_-n9§:int;
      
      private static var §_-Va§:Function;
      
      private static var §_-Cj§:Function;
      
      private static var §_-Pc§:Loader;
      
      private static var §_-u3§:URLLoader;
      
      private static var §_-JD§:XML;
      
      private static var §_-PV§:String = "";
      
      private static var §_-GR§:int = 0;
      
      private static var §_-kT§:Vector.<String>;
      
      private static var §use §:String = "external_assets/LoadTest.swf";
      
      private static var §_-Wd§:Boolean = false;
      
      public static var packages:Array;
      
      private static var §_-er§:String;
      
      private static var §_-xh§:String;
      
      private static var §_-34§:§_-8C§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §_-Qo§ = false;
            if(_loc2_)
            {
               §_-PV§ = "";
               if(_loc2_ || _loc1_)
               {
                  §_-GR§ = 0;
                  §use § = "external_assets/LoadTest.swf";
               }
            }
            §_-Wd§ = false;
            packages = [];
         }
      }
      
      public function §_-TQ§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function init(param1:XML, param2:String, param3:String, param4:§_-8C§, param5:Function = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §_-er§ = param2;
         if(_loc7_)
         {
            §_-xh§ = param3;
            §_-Wd§ = true;
            §_-Qo§ = false;
         }
         §_-34§ = param4;
         if(_loc7_ || param3)
         {
            §_-Va§ = param5;
         }
      }
      
      private static function §_-l5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-Wd§ = true;
            if(!(_loc2_ && §_-TQ§))
            {
               addr32:
               §_-Qo§ = false;
            }
            return;
         }
         §§goto(addr32);
      }
      
      public static function §_-pc§() : Boolean
      {
         return §_-Wd§;
      }
      
      public static function §_-ts§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(§_-Qo§);
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        §§goto(addr51);
                     }
                  }
                  else
                  {
                     §_-NF§ = new Vector.<XML>();
                     if(_loc1_)
                     {
                        §_-ip§ = 0;
                     }
                  }
                  return true;
               }
               §§goto(addr28);
            }
            §§goto(addr52);
         }
         §§goto(addr28);
      }
      
      public static function §_-VO§(param1:XML) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc3_))
         {
            §§push(§_-Qo§);
            if(!_loc5_)
            {
               §§push(Boolean(§§pop()));
               if(_loc4_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc4_ || _loc3_)
                     {
                        §§pop();
                        §§goto(addr71);
                     }
                  }
               }
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     return;
                  }
                  §§goto(addr71);
               }
               else
               {
                  §_-NF§.push(param1);
                  if(_loc4_ || §_-TQ§)
                  {
                     §§goto(addr71);
                  }
               }
               §§goto(addr71);
            }
            §§goto(addr54);
         }
         addr71:
         if(_loc4_)
         {
            §§push(§_-pc§());
            if(_loc4_)
            {
               addr54:
               §§push(Boolean(§§pop()));
            }
         }
         var _loc2_:*;
         §§push((_loc2_ = §§findproperty(§_-ip§)).§_-ip§);
         if(_loc4_ || _loc2_)
         {
            §§push(§§pop() + 1);
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || param1)
         {
            _loc2_.§_-ip§ = _loc3_;
         }
      }
      
      public static function §_-TH§(param1:Function = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(§_-Qo§);
            if(_loc3_)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§pop();
                        §§push(§_-pc§());
                        if(_loc3_ || _loc3_)
                        {
                           addr46:
                           §§push(Boolean(§§pop()));
                        }
                     }
                     §§goto(addr46);
                  }
               }
               if(§§pop())
               {
                  return;
               }
               §_-Cj§ = param1;
               if(_loc3_)
               {
                  §_-ip§ = §_-NF§.length;
                  if(_loc3_ || §_-TQ§)
                  {
                     if(§_-NF§.length > 0)
                     {
                        addr76:
                        §_-Qo§ = true;
                        if(_loc3_ || §_-TQ§)
                        {
                           addr86:
                           §_-h9§();
                           addr88:
                        }
                     }
                     else if(§_-NF§.length == 0)
                     {
                        if(_loc3_ || §_-TQ§)
                        {
                           §_-Qo§ = true;
                           if(_loc2_ && param1)
                           {
                           }
                           §§goto(addr119);
                        }
                        §_-gm§();
                     }
                     addr119:
                     return;
                  }
                  §§goto(addr88);
               }
               §§goto(addr86);
            }
            §§goto(addr46);
         }
         §§goto(addr76);
      }
      
      private static function §_-h9§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = null;
         §§push(§_-Qo§);
         if(_loc2_ || _loc2_)
         {
            §§push(Boolean(§§pop()));
            if(_loc2_)
            {
               §§push(§§pop());
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        §§push(Boolean(§_-pc§()));
                     }
                  }
                  if(§§pop())
                  {
                     §§push("");
                     if(!(_loc3_ && _loc1_))
                     {
                        _loc1_ = §§pop();
                        if(!(_loc3_ && §_-TQ§))
                        {
                           §§push(§_-xh§);
                           if(_loc2_)
                           {
                              addr68:
                              §§push(§§pop() == null);
                              if(_loc2_ || §_-TQ§)
                              {
                                 §§push(!§§pop());
                              }
                              if(§§pop())
                              {
                                 if(_loc2_ || _loc1_)
                                 {
                                    addr76:
                                    §§pop();
                                    if(_loc2_)
                                    {
                                       §§push(§_-xh§);
                                       if(_loc2_)
                                       {
                                          addr92:
                                          if(§§pop().length > 0)
                                          {
                                             if(_loc2_)
                                             {
                                                addr99:
                                                _loc1_ = "?version=" + §_-xh§;
                                                addr100:
                                                §_-JD§ = §_-NF§.shift();
                                                if(_loc2_)
                                                {
                                                   if(§_-JD§.localName() == "pack")
                                                   {
                                                      addr110:
                                                      §_-u3§ = new URLLoader();
                                                      if(!_loc3_)
                                                      {
                                                         §_-u3§.dataFormat = URLLoaderDataFormat.BINARY;
                                                         §§goto(addr120);
                                                      }
                                                      addr120:
                                                      §_-u3§.addEventListener(Event.COMPLETE,§_-9k§);
                                                      §_-u3§.load(new URLRequest(§_-er§ + §_-JD§.@url.toString() + _loc1_));
                                                      if(_loc3_)
                                                      {
                                                      }
                                                      §§goto(addr175);
                                                   }
                                                   else
                                                   {
                                                      §_-Pc§ = new Loader();
                                                   }
                                                   §_-Pc§.contentLoaderInfo.addEventListener(Event.COMPLETE,§_-aL§);
                                                   §_-Pc§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,§_-Fr§);
                                                }
                                                §_-Pc§.load(new URLRequest(§_-er§ + §_-PV§ + §_-JD§.@swf.toString() + _loc1_));
                                                addr175:
                                                return;
                                                addr98:
                                             }
                                             §§goto(addr110);
                                          }
                                          §§goto(addr100);
                                       }
                                       §§goto(addr99);
                                    }
                                    §§goto(addr120);
                                 }
                              }
                           }
                           §§goto(addr92);
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr175);
               }
               §§goto(addr68);
            }
            §§goto(addr76);
         }
         §§goto(addr92);
      }
      
      private static function §_-Fr§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §_-Pc§.contentLoaderInfo.removeEventListener(Event.COMPLETE,§_-aL§);
            if(_loc3_ || §_-TQ§)
            {
               addr41:
               §_-Pc§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,§_-Fr§);
            }
            throw new Error("[LoadManager] FILE NOT FOUND: " + §_-Pc§.contentLoaderInfo.url,§_-tX§.§_-7I§);
         }
         §§goto(addr41);
      }
      
      private static function §_-9k§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §_-u3§.removeEventListener(Event.COMPLETE,§_-9k§);
            if(_loc5_ || §_-TQ§)
            {
               packages.push(§_-u3§.data);
               addr32:
               if(§_-Va§ != null)
               {
                  §_-Va§(§_-u3§.data);
               }
               §§push(§_-34§);
               if(!(_loc4_ && _loc2_))
               {
                  if(§§pop())
                  {
                     §_-34§.§_-nS§(§_-u3§.data);
                     addr49:
                     if(!_loc4_)
                     {
                        §§goto(addr61);
                     }
                     §§goto(addr65);
                  }
                  addr61:
                  §_-dX§();
                  if(!_loc4_)
                  {
                     addr65:
                     var _loc2_:*;
                     §§push((_loc2_ = §§findproperty(§_-n9§)).§_-n9§);
                     if(_loc5_ || param1)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!(_loc4_ && _loc3_))
                     {
                        _loc2_.§_-n9§ = _loc3_;
                     }
                     if(!(_loc4_ && §_-TQ§))
                     {
                        if(§_-NF§.length > 0)
                        {
                           addr108:
                           §_-h9§();
                        }
                        else
                        {
                           §_-gm§();
                           §§goto(addr113);
                        }
                        §§goto(addr113);
                     }
                  }
                  addr113:
                  return;
               }
               §§goto(addr49);
            }
            §§goto(addr108);
         }
         §§goto(addr32);
      }
      
      private static function §_-aL§(param1:Event) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         var _loc5_:Class = null;
         if(_loc8_)
         {
            §_-Pc§.contentLoaderInfo.removeEventListener(Event.COMPLETE,§_-aL§);
            if(_loc8_)
            {
               addr32:
               §_-Pc§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,§_-Fr§);
            }
            var _loc2_:* = §_-Pc§.content;
            for each(_loc3_ in §_-JD§.Asset)
            {
               _loc4_ = §_-JD§;
               if(!_loc9_)
               {
                  if(_loc2_ == null)
                  {
                     if(!(_loc9_ && param1))
                     {
                        throw new Error("[LoadManager] Library is NULL (This should NEVER HAPPEN!!)");
                     }
                  }
               }
               if((_loc5_ = _loc2_.loaderInfo.applicationDomain.getDefinition(_loc3_.@name.toString()) as Class) == null)
               {
                  if(!(_loc9_ && §_-TQ§))
                  {
                     §§push(§_-54§);
                     §§push("ASSET CACHING FAILED!" + _loc3_.@name.toString());
                     if(!(_loc9_ && _loc3_))
                     {
                        §§push(§§pop() + ", src:");
                        if(_loc8_)
                        {
                           §§push(§§pop() + §_-JD§.@swf);
                        }
                     }
                     §§pop().log(§§pop());
                     if(_loc9_)
                     {
                        addr135:
                        §_-54§.log("ASSET CACHED: " + _loc3_.@name.toString());
                        continue;
                     }
                  }
                  continue;
               }
               §_-z1§.§_-SK§(_loc3_.@name.toString(),_loc5_);
               if(_loc9_)
               {
                  continue;
               }
               §§goto(addr135);
            }
            if(!(_loc9_ && param1))
            {
               §_-dX§();
               if(_loc8_ || _loc3_)
               {
                  addr162:
                  var _loc6_:*;
                  §§push((_loc6_ = §§findproperty(§_-n9§)).§_-n9§);
                  if(_loc8_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc7_:* = §§pop();
                  if(_loc8_ || _loc3_)
                  {
                     _loc6_.§_-n9§ = _loc7_;
                  }
                  if(_loc8_ || param1)
                  {
                     if(§_-NF§.length > 0)
                     {
                        if(_loc8_)
                        {
                           §_-h9§();
                           if(_loc9_ && _loc2_)
                           {
                           }
                           §§goto(addr214);
                        }
                     }
                     else
                     {
                        §_-gm§();
                     }
                  }
               }
               addr214:
               return;
            }
            §§goto(addr162);
         }
         §§goto(addr32);
      }
      
      private static function §_-dX§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §_-Pc§ = null;
            if(_loc2_)
            {
               addr40:
               §_-u3§ = null;
               if(!_loc1_)
               {
                  §_-JD§ = null;
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      private static function §_-gm§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(§_-Cj§);
            if(_loc1_)
            {
               if(§§pop() != null)
               {
                  if(_loc1_)
                  {
                     addr42:
                     §_-Cj§.call();
                     addr41:
                     if(_loc2_)
                     {
                     }
                     §§goto(addr48);
                  }
                  §_-Cj§ = null;
               }
               addr48:
               return;
            }
            §§goto(addr42);
         }
         §§goto(addr41);
      }
      
      public static function §_-qj§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-Qo§ = false;
            if(!_loc2_)
            {
               §_-ip§ = 0;
               if(!_loc2_)
               {
                  addr32:
                  if(§_-NF§)
                  {
                     if(_loc1_ || §_-TQ§)
                     {
                        §_-NF§ = null;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr32);
      }
      
      public static function §_-1H§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!§_-pc§())
         {
            if(!(_loc2_ && _loc1_))
            {
               §_-54§.log("[LoadManager] Init not complete yet!");
               if(!(_loc2_ && _loc2_))
               {
                  return 0;
               }
               addr88:
               §§push(-1);
               if(!_loc2_)
               {
                  return §§pop();
               }
               addr163:
               §§push(§_-ip§);
            }
            else
            {
               addr92:
               §§push(§_-ip§);
               §§push(0);
               if(_loc1_ || _loc1_)
               {
                  if(§§pop() == §§pop())
                  {
                     addr113:
                     §§push(§_-34§);
                     if(!(_loc2_ && _loc1_))
                     {
                        if(!§§pop())
                        {
                           return 1;
                        }
                        §§push(§_-34§);
                     }
                     if(§§pop().§_-pi§)
                     {
                        return 1;
                     }
                     §§push(§_-n9§);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(§§pop() - 0.5);
                        if(!_loc2_)
                        {
                           §§push(§§pop() / §_-ip§);
                           if(_loc1_ || _loc1_)
                           {
                              return §§pop();
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr163);
                     }
                     §§goto(addr165);
                  }
                  else
                  {
                     addr162:
                     §§push(§_-n9§);
                  }
                  §§goto(addr163);
               }
            }
            addr164:
            addr165:
            return §§pop();
            §§push(§§pop() / §§pop());
         }
         else
         {
            §§push(§_-Qo§);
            if(!_loc2_)
            {
               §§push(!§§pop());
               §§push(!§§pop());
               if(!(_loc2_ && _loc1_))
               {
                  if(!§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§pop();
                        addr60:
                        addr61:
                        §§push(!§_-NF§);
                        if(!!§_-NF§)
                        {
                           addr62:
                           §§pop();
                           §§push(!§_-pc§());
                           if(_loc2_ && _loc2_)
                           {
                           }
                           §§goto(addr113);
                        }
                        if(§§pop())
                        {
                           if(_loc1_)
                           {
                              §_-54§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
                              if(_loc1_)
                              {
                                 §§goto(addr88);
                              }
                              else
                              {
                                 §§goto(addr162);
                              }
                           }
                           else
                           {
                              §§goto(addr92);
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr62);
                  }
                  §§goto(addr60);
               }
               §§goto(addr61);
            }
            §§goto(addr62);
         }
         §§goto(addr113);
      }
   }
}
