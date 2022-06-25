package §'k§
{
   import §;z§.§%"§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §;[§ extends EventDispatcher
   {
       
      
      private var §4! §:String = "";
      
      private var §@m§:String;
      
      private var §!!A§:URLLoader;
      
      private var §,3§:Dictionary;
      
      private var §1;§:String = null;
      
      private var §8d§:String = null;
      
      private var §9-§:String = null;
      
      private var §4x§:Boolean;
      
      private var §5"§:§%"§;
      
      private var §`!8§:§ >§;
      
      private var §+!6§:Vector.<§ >§>;
      
      private var §1i§:String = "pak";
      
      private var § "§:Boolean = true;
      
      private var § F§:int = 1;
      
      public function §;[§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§,3§ = new Dictionary();
         }
         this.§+!6§ = new Vector.<§ >§>();
         super();
         if(!_loc6_)
         {
            this.§4! § = param2;
            this.§@m§ = param1;
            this.§ "§ = param3;
            if(!(_loc6_ && param1))
            {
               addr68:
               this.§ F§ = Math.max(1,param4);
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function get textureManager() : § >§
      {
         return this.§`!8§;
      }
      
      public function §-!,§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(param1);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop().toLowerCase());
            }
            param1 = §§pop();
         }
         §§push(this.§,3§[param1] == null);
         if(_loc3_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      private function §"!2§(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§ >§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§+!6§.length)
            {
               return false;
            }
            _loc3_ = this.§+!6§[_loc2_];
            if(_loc4_)
            {
               break;
            }
            if(_loc3_.id == param1)
            {
               this.§`!8§ = _loc3_;
               this.§1;§ = param1;
               if(_loc5_ || this)
               {
                  this.§+!6§.splice(_loc2_,1);
                  if(_loc5_)
                  {
                     this.§+!6§.unshift(this.§`!8§);
                     if(_loc5_)
                     {
                        break;
                     }
                  }
               }
            }
            _loc2_++;
         }
         return true;
      }
      
      public function §5&§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(param1);
            if(_loc3_ || this)
            {
               §§push(§§pop().toLowerCase());
               if(_loc3_ || this)
               {
                  addr41:
                  param1 = §§pop();
                  if(this.§&J§())
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!this.§4n§())
                        {
                           this.§9-§ = param1;
                           return;
                        }
                        addr71:
                        if(this.§-!,§(param1))
                        {
                           this.§"!2§(param1);
                           if(!(_loc2_ && this))
                           {
                              addr86:
                              §§push(param1 == this.§1;§);
                              if(!(param1 == this.§1;§))
                              {
                                 §§pop();
                                 if(!_loc2_)
                                 {
                                    addr104:
                                    §§push(this.§ "§);
                                    if(_loc3_ || _loc3_)
                                    {
                                    }
                                    §§goto(addr114);
                                 }
                                 §§goto(addr121);
                              }
                              §§goto(addr114);
                           }
                        }
                        else
                        {
                           this.§1$§(param1);
                        }
                     }
                     addr114:
                     if(!§§pop())
                     {
                        dispatchEvent(new Event(Event.COMPLETE));
                        addr121:
                     }
                     else
                     {
                        this.§0s§(param1,false);
                     }
                     return;
                  }
                  §§goto(addr71);
               }
               §§goto(addr86);
            }
            §§goto(addr41);
         }
         §§goto(addr104);
      }
      
      private function §1$§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = "";
         §§push(this.§4! §);
         if(_loc3_)
         {
            §§push(§§pop() == null);
            if(!(_loc4_ && this))
            {
               §§push(!§§pop());
               if(_loc3_ || param1)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        addr43:
                        §§pop();
                        if(_loc3_)
                        {
                           §§push(this.§4! §);
                           if(_loc3_ || param1)
                           {
                              addr58:
                              if(§§pop().length > 0)
                              {
                                 addr66:
                                 §§push("?version=");
                                 if(_loc3_)
                                 {
                                    §§push(§§pop() + this.§4! §);
                                 }
                                 _loc2_ = §§pop();
                                 if(!_loc4_)
                                 {
                                    addr69:
                                    this.§8d§ = param1;
                                    if(!(_loc4_ && this))
                                    {
                                       this.§!!A§ = new URLLoader();
                                       if(_loc3_ || _loc3_)
                                       {
                                          this.§!!A§.dataFormat = URLLoaderDataFormat.BINARY;
                                          if(_loc3_ || this)
                                          {
                                             addr112:
                                             this.§!!A§.addEventListener(Event.COMPLETE,this.onComplete);
                                             this.§!!A§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                             if(_loc3_ || _loc2_)
                                             {
                                             }
                                             §§goto(addr175);
                                          }
                                          §§goto(addr157);
                                       }
                                       this.§!!A§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          addr157:
                                          this.§!!A§.load(new URLRequest(this.§@m§ + "packages/" + param1 + "." + this.§1i§ + _loc2_));
                                          §§goto(addr175);
                                       }
                                       addr175:
                                       return;
                                    }
                                    §§goto(addr112);
                                 }
                                 §§goto(addr157);
                              }
                              §§goto(addr69);
                           }
                           §§goto(addr66);
                        }
                        §§goto(addr112);
                     }
                  }
                  §§goto(addr58);
               }
            }
            §§goto(addr43);
         }
         §§goto(addr66);
      }
      
      private function §&J§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(Boolean(this.§!!A§));
            if(_loc2_ || this)
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && this))
                  {
                     §§pop();
                     addr54:
                     §§push(this.§4x§);
                     if(_loc1_)
                     {
                     }
                     §§goto(addr59);
                  }
                  §§push(Boolean(§§pop()));
               }
            }
            addr59:
            return §§pop();
         }
         §§goto(addr54);
      }
      
      private function §4n§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§!!A§)
            {
               if(_loc1_ || this)
               {
                  this.§!!A§.removeEventListener(Event.COMPLETE,this.onComplete);
               }
               this.§!!A§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               this.§!!A§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
               if(_loc1_ || _loc1_)
               {
                  addr76:
                  this.§!!A§.close();
                  this.§!!A§ = null;
                  §§goto(addr82);
               }
               §§goto(addr103);
            }
            addr82:
            §§push(this.§4x§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(false);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§goto(addr102);
                     }
                  }
                  else
                  {
                     addr103:
                     §§push(true);
                  }
                  return §§pop();
               }
               §§goto(addr103);
            }
            addr102:
            return §§pop();
         }
         §§goto(addr76);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.§!!A§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§!!A§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         if(_loc2_)
         {
            this.§!!A§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
         this.§,3§[this.§8d§] = this.§!!A§.data;
         this.§!!A§ = null;
         this.§0s§(this.§8d§,true);
      }
      
      private function §0s§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§ >§ = null;
         if(!_loc4_)
         {
            this.§4x§ = true;
            if(!(_loc4_ && _loc3_))
            {
               this.§8d§ = param1;
            }
         }
         while(this.§+!6§.length >= this.§ F§)
         {
            _loc3_ = this.§+!6§.pop();
            if(_loc5_ || _loc3_)
            {
               _loc3_.dispose();
            }
         }
         §§push(this.§5"§);
         if(!(_loc4_ && _loc3_))
         {
            if(§§pop())
            {
               if(_loc5_)
               {
                  §§push(this.§5"§);
                  if(_loc5_ || _loc3_)
                  {
                     §§pop().dispose();
                     if(_loc5_ || param1)
                     {
                        addr96:
                        this.§`!8§ = new § >§(param1);
                        if(!(_loc4_ && param2))
                        {
                           this.§+!6§.unshift(this.§`!8§);
                        }
                        this.§5"§ = new §%"§();
                        §§push(this.§5"§);
                        if(_loc5_ || param1)
                        {
                           §§pop().addEventListener(Event.COMPLETE,this.§]n§);
                           if(!(_loc4_ && param1))
                           {
                              addr150:
                              this.§5"§.§#!6§(this.§,3§[this.§8d§],param2);
                           }
                           return;
                        }
                        §§goto(addr150);
                     }
                  }
               }
               §§goto(addr150);
            }
            §§goto(addr96);
         }
         §§goto(addr150);
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.§!!A§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§!!A§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§!!A§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         if(!(_loc3_ && _loc2_))
         {
            this.§!!A§.close();
            if(!(_loc3_ && _loc2_))
            {
               this.§!!A§ = null;
               this.§8d§ = null;
               dispatchEvent(new Event(Event.CANCEL));
            }
         }
      }
      
      private function §]n§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            this.§4x§ = false;
            if(!(_loc4_ && _loc2_))
            {
               §§push(this.§5"§);
               if(!(_loc4_ && this))
               {
                  §§pop().removeEventListener(Event.COMPLETE,this.§]n§);
                  addr48:
                  if(this.§9-§)
                  {
                     this.§5&§(this.§9-§);
                     if(!(_loc4_ && _loc3_))
                     {
                        this.§9-§ = null;
                     }
                     return;
                  }
                  addr76:
                  §§push(this.§5"§);
               }
               §§push(§§pop().§%b§.§5<§);
               if(!(_loc4_ && param1))
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               var _loc3_:int = 0;
               while(true)
               {
                  if(_loc3_ >= _loc2_)
                  {
                     if(_loc5_)
                     {
                        addr131:
                        this.§]!A§();
                        break;
                     }
                     break;
                  }
                  this.§`!8§.§3q§(this.§5"§.§%b§.§@!"§(_loc3_));
                  if(_loc4_ && _loc3_)
                  {
                     break;
                  }
                  _loc3_++;
                  if(!(_loc4_ && param1))
                  {
                     continue;
                  }
                  §§goto(addr131);
               }
               return;
            }
            §§goto(addr76);
         }
         §§goto(addr48);
      }
      
      public function §]!A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§&J§());
         if(_loc2_ || _loc1_)
         {
            §§push(Boolean(§§pop()));
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr38:
                     §§pop();
                     if(!(_loc1_ && _loc2_))
                     {
                        §§push(this.§5"§);
                        if(!(_loc1_ && _loc2_))
                        {
                           §§push(§§pop() == null);
                           if(_loc2_)
                           {
                              §§goto(addr69);
                           }
                           §§goto(addr93);
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr104);
                  }
               }
            }
            addr69:
            if(§§pop())
            {
               if(_loc2_ || _loc2_)
               {
                  return;
               }
               addr104:
               this.§5"§ = null;
               if(_loc2_)
               {
                  this.§1;§ = this.§8d§;
                  addr113:
                  this.§8d§ = null;
                  dispatchEvent(new Event(Event.COMPLETE));
               }
            }
            else
            {
               addr93:
               if(this.§`!8§.§]!A§())
               {
                  addr96:
                  this.§5"§.dispose();
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr104);
                  }
                  §§goto(addr113);
               }
            }
            return;
         }
         §§goto(addr38);
      }
   }
}
