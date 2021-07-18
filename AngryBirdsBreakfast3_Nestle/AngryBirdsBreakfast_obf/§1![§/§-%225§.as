package §1![§
{
   import §"!w§.§[,§;
   import §#!q§.§!%§;
   import §%!B§.§0![§;
   import §%!B§.§5L§;
   import §4!i§.§4!S§;
   import §<!0§.§-k§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   [SecureSWF(codeWrap="max",rename="true",statementLevel="true",controlFlow="100")]
   public class §-"5§ extends §[,§
   {
       
      
      protected var §4a§:§0![§;
      
      protected var §8!N§:Loader;
      
      protected var §+"4§:Vector.<XML>;
      
      public function §-"5§(param1:§0![§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§+"4§ = new Vector.<XML>();
            while(true)
            {
               super();
               while(_loc2_ || param1)
               {
                  this.§4a§ = param1;
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr44:
               }
            }
         }
         §§goto(addr44);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.dispose();
            do
            {
               this.§4a§ = null;
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      override protected function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.clear();
            while(this.§8!N§)
            {
               if(!_loc1_)
               {
                  do
                  {
                     this.§8!N§ = null;
                  }
                  while(!(_loc1_ || this));
                  
               }
               else
               {
                  addr81:
               }
               if(!(_loc1_ || this))
               {
                  continue;
               }
               this.§8!N§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§-[§);
            }
            return;
         }
         §§goto(addr81);
      }
      
      override protected function initializeFile(param1:String) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:* = null;
         var _loc2_:Array = param1.match(/^levels\/(.*)\.json$/i);
         if(_loc7_)
         {
            if(_loc2_)
            {
               if(_loc7_)
               {
                  §§push(_loc2_[1].toLowerCase().substr("level".length));
                  if(!_loc8_)
                  {
                     _loc6_ = §§pop();
                     if(_loc7_ || param1)
                     {
                        this.§9_§(_loc6_,param1);
                        addr55:
                        §§push(param1);
                     }
                     §§goto(addr55);
                  }
                  var _loc3_:Array = §§pop().match(/^particle_emitters\/(.*)\.pex$/i);
                  if(!(_loc8_ && this))
                  {
                     if(_loc3_)
                     {
                        if(!(_loc8_ && param1))
                        {
                           this.§7!z§(_loc3_[1]);
                        }
                     }
                  }
                  var _loc4_:Array;
                  if(_loc4_ = param1.match(/cutscenes.lua$/i))
                  {
                     if(_loc7_)
                     {
                        this.§5" §(param1);
                     }
                  }
                  var _loc5_:Array;
                  if(_loc5_ = param1.match(/cutscene.swf$/i))
                  {
                     if(_loc7_ || param1)
                     {
                        this.§^!P§(param1);
                        if(!_loc8_)
                        {
                           addr175:
                           §§push(param1);
                           loop5:
                           while(true)
                           {
                              if(§§pop().toLowerCase() == "assetmap.xml")
                              {
                                 while(true)
                                 {
                                    this.§@s§(param1);
                                    §§goto(addr182);
                                 }
                                 addr179:
                              }
                              loop1:
                              while(true)
                              {
                                 §§push(param1);
                                 if(!_loc8_)
                                 {
                                    if(§§pop().toLowerCase() == "episodes.json")
                                    {
                                       while(true)
                                       {
                                          if(_loc8_)
                                          {
                                             break loop1;
                                          }
                                          this.§,I§(param1);
                                          while(true)
                                          {
                                          }
                                       }
                                       addr159:
                                    }
                                    while(true)
                                    {
                                       super.initializeFile(param1);
                                       if(!(_loc7_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                       §§goto(addr159);
                                    }
                                    if(!_loc7_)
                                    {
                                       addr182:
                                       §§goto(addr151);
                                    }
                                 }
                                 continue loop5;
                                 addr151:
                                 while(true)
                                 {
                                 }
                                 return;
                              }
                              §§goto(addr179);
                           }
                        }
                        §§goto(addr182);
                     }
                     §§goto(addr174);
                  }
                  §§goto(addr175);
               }
            }
         }
         §§goto(addr55);
      }
      
      protected function §9_§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§4a§);
            if(_loc3_ || _loc3_)
            {
               §§push(param1);
               if(!(_loc4_ && param2))
               {
                  if(!§§pop().getLevelForId(§§pop()))
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr67:
                        this.§4a§.§`!E§(param1,§5L§.§""4§(§5"-§(param2)));
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      protected function §,I§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§4a§.§5l§(JSON.parse(§5"-§(param1)));
         }
      }
      
      private function §@s§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            var _loc3_:*;
            var _loc4_:* = (_loc3_ = §§findproperty(§4c§)).§4c§ + 1;
            if(_loc6_)
            {
               _loc3_.§4c§ = _loc4_;
            }
         }
         var _loc2_:XML = new XML(§5"-§(param1));
         if(!(_loc5_ && this))
         {
            this.§+"4§.push(_loc2_);
            loop0:
            while(this.§+"4§.length == 1)
            {
               if(!_loc5_)
               {
                  this.§8!N§ = new Loader();
               }
               loop1:
               while(!(_loc5_ && _loc3_))
               {
                  this.§8!N§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§-[§);
                  while(true)
                  {
                     this.§8!N§.loadBytes(§!!>§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
                     if(!_loc5_)
                     {
                        if(_loc6_ || this)
                        {
                           break loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr94);
      }
      
      private function §-[§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            this.§8!N§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§-[§);
         }
         var _loc2_:XML = this.§+"4§.shift();
         if(!_loc3_)
         {
            if(this.§+"4§.length > 0)
            {
               loop0:
               while(true)
               {
                  this.§8!N§ = new Loader();
                  while(true)
                  {
                     this.§8!N§.contentLoaderInfo.addEventListener(Event.INIT,this.§-[§);
                     while(_loc4_ || param1)
                     {
                        this.§8!N§.loadBytes(§!!>§(this.§+"4§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
                        while(true)
                        {
                        }
                        if(_loc4_ || _loc3_)
                        {
                           if(_loc4_)
                           {
                              return;
                              addr68:
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §,5§();
               if(!_loc4_)
               {
                  continue;
               }
               §§goto(addr49);
            }
            §§goto(addr68);
         }
         §§goto(addr86);
      }
      
      private function §5" §(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = §4!S§.§+!5§(§5"-§(param1));
         if(!_loc3_)
         {
            §-k§.§5" §(_loc2_);
         }
      }
      
      private function §^!P§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §-k§.§9!9§(§"u§,§!!>§(param1,§"u§));
         }
      }
      
      protected function §7!z§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc6_ && this))
         {
            §§pop().§§slot[1] = param1;
            if(!_loc6_)
            {
               addr33:
               var onComplete:Function = function(param1:Bitmap):void
               {
                  §!%§.§2!q§(id,XML(§5"-§("particle_emitters/" + id + ".pex")),param1.bitmapData);
                  §,5§();
               };
               if(!(_loc6_ && _loc3_))
               {
                  var _loc3_:*;
                  var _loc4_:* = (_loc3_ = §§findproperty(§4c§)).§4c§ + 1;
                  if(_loc5_ || _loc2_)
                  {
                     _loc3_.§4c§ = _loc4_;
                  }
                  if(_loc6_ && this)
                  {
                  }
                  §§goto(addr100);
               }
               §§push(§§findproperty(§,D§));
               §§push("particle_emitters/" + id);
               if(_loc5_)
               {
                  §§push(§§pop() + ".png");
               }
               §§pop().§,D§(§§pop(),onComplete);
            }
            addr100:
            return;
         }
         §§goto(addr33);
      }
   }
}
