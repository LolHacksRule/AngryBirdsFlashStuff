package §-!0§
{
   import §,U§.§+u§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §2h§ extends EventDispatcher
   {
       
      
      private var §?M§:String = "";
      
      private var §3#§:String;
      
      private var §+z§:URLLoader;
      
      private var §,d§:Dictionary;
      
      private var §0D§:String = null;
      
      private var §<!>§:String = null;
      
      private var §=L§:String = null;
      
      private var §+!$§:Boolean;
      
      private var §6!&§:§+u§;
      
      private var § 7§:§'!3§;
      
      private var §,J§:Vector.<§'!3§>;
      
      private var §,!5§:String = "pak";
      
      private var §6p§:Boolean = true;
      
      private var §[y§:int = 1;
      
      public function §2h§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§,d§ = new Dictionary();
         }
         this.§,J§ = new Vector.<§'!3§>();
         super();
         if(!_loc6_)
         {
            this.§?M§ = param2;
            this.§3#§ = param1;
            this.§6p§ = param3;
            if(!(_loc6_ && param1))
            {
               addr68:
               this.§[y§ = Math.max(1,param4);
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function get textureManager() : §'!3§
      {
         return this.§ 7§;
      }
      
      public function §[W§(param1:String) : Boolean
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
         §§push(this.§,d§[param1] == null);
         if(_loc3_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      private function § !2§(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§'!3§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§,J§.length)
            {
               return false;
            }
            _loc3_ = this.§,J§[_loc2_];
            if(_loc4_)
            {
               break;
            }
            if(_loc3_.id == param1)
            {
               this.§ 7§ = _loc3_;
               this.§0D§ = param1;
               if(_loc5_ || this)
               {
                  this.§,J§.splice(_loc2_,1);
                  if(_loc5_)
                  {
                     this.§,J§.unshift(this.§ 7§);
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
      
      public function § null§(param1:String) : void
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
                  if(this.§<w§())
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!this.§<u§())
                        {
                           this.§=L§ = param1;
                           return;
                        }
                        addr71:
                        if(this.§[W§(param1))
                        {
                           this.§ !2§(param1);
                           if(!(_loc2_ && this))
                           {
                              addr86:
                              §§push(param1 == this.§0D§);
                              if(!(param1 == this.§0D§))
                              {
                                 §§pop();
                                 if(!_loc2_)
                                 {
                                    addr104:
                                    §§push(this.§6p§);
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
                           this.§"k§(param1);
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
                        this.§7!$§(param1,false);
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
      
      private function §"k§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = "";
         §§push(this.§?M§);
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
                           §§push(this.§?M§);
                           if(_loc3_ || param1)
                           {
                              addr58:
                              if(§§pop().length > 0)
                              {
                                 addr66:
                                 §§push("?version=");
                                 if(_loc3_)
                                 {
                                    §§push(§§pop() + this.§?M§);
                                 }
                                 _loc2_ = §§pop();
                                 if(!_loc4_)
                                 {
                                    addr69:
                                    this.§<!>§ = param1;
                                    if(!(_loc4_ && this))
                                    {
                                       this.§+z§ = new URLLoader();
                                       if(_loc3_ || _loc3_)
                                       {
                                          this.§+z§.dataFormat = URLLoaderDataFormat.BINARY;
                                          if(_loc3_ || this)
                                          {
                                             addr112:
                                             this.§+z§.addEventListener(Event.COMPLETE,this.onComplete);
                                             this.§+z§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                             if(_loc3_ || _loc2_)
                                             {
                                             }
                                             §§goto(addr175);
                                          }
                                          §§goto(addr157);
                                       }
                                       this.§+z§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          addr157:
                                          this.§+z§.load(new URLRequest(this.§3#§ + "packages/" + param1 + "." + this.§,!5§ + _loc2_));
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
      
      private function §<w§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(Boolean(this.§+z§));
            if(_loc2_ || this)
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && this))
                  {
                     §§pop();
                     addr54:
                     §§push(this.§+!$§);
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
      
      private function §<u§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§+z§)
            {
               if(_loc1_ || this)
               {
                  this.§+z§.removeEventListener(Event.COMPLETE,this.onComplete);
               }
               this.§+z§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               this.§+z§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
               if(_loc1_ || _loc1_)
               {
                  addr76:
                  this.§+z§.close();
                  this.§+z§ = null;
                  §§goto(addr82);
               }
               §§goto(addr103);
            }
            addr82:
            §§push(this.§+!$§);
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
         this.§+z§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§+z§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         if(_loc2_)
         {
            this.§+z§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
         this.§,d§[this.§<!>§] = this.§+z§.data;
         this.§+z§ = null;
         this.§7!$§(this.§<!>§,true);
      }
      
      private function §7!$§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§'!3§ = null;
         if(!_loc4_)
         {
            this.§+!$§ = true;
            if(!(_loc4_ && _loc3_))
            {
               this.§<!>§ = param1;
            }
         }
         while(this.§,J§.length >= this.§[y§)
         {
            _loc3_ = this.§,J§.pop();
            if(_loc5_ || _loc3_)
            {
               _loc3_.dispose();
            }
         }
         §§push(this.§6!&§);
         if(!(_loc4_ && _loc3_))
         {
            if(§§pop())
            {
               if(_loc5_)
               {
                  §§push(this.§6!&§);
                  if(_loc5_ || _loc3_)
                  {
                     §§pop().dispose();
                     if(_loc5_ || param1)
                     {
                        addr96:
                        this.§ 7§ = new §'!3§(param1);
                        if(!(_loc4_ && param2))
                        {
                           this.§,J§.unshift(this.§ 7§);
                        }
                        this.§6!&§ = new §+u§();
                        §§push(this.§6!&§);
                        if(_loc5_ || param1)
                        {
                           §§pop().addEventListener(Event.COMPLETE,this.§%]§);
                           if(!(_loc4_ && param1))
                           {
                              addr150:
                              this.§6!&§.§?s§(this.§,d§[this.§<!>§],param2);
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
         this.§+z§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§+z§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§+z§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         if(!(_loc3_ && _loc2_))
         {
            this.§+z§.close();
            if(!(_loc3_ && _loc2_))
            {
               this.§+z§ = null;
               this.§<!>§ = null;
               dispatchEvent(new Event(Event.CANCEL));
            }
         }
      }
      
      private function §%]§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            this.§+!$§ = false;
            if(!(_loc4_ && _loc2_))
            {
               §§push(this.§6!&§);
               if(!(_loc4_ && this))
               {
                  §§pop().removeEventListener(Event.COMPLETE,this.§%]§);
                  addr48:
                  if(this.§=L§)
                  {
                     this.§ null§(this.§=L§);
                     if(!(_loc4_ && _loc3_))
                     {
                        this.§=L§ = null;
                     }
                     return;
                  }
                  addr76:
                  §§push(this.§6!&§);
               }
               §§push(§§pop().§'a§.§8h§);
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
                        this.§,_§();
                        break;
                     }
                     break;
                  }
                  this.§ 7§.§4!2§(this.§6!&§.§'a§.§!4§(_loc3_));
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
      
      public function §,_§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§<w§());
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
                        §§push(this.§6!&§);
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
               this.§6!&§ = null;
               if(_loc2_)
               {
                  this.§0D§ = this.§<!>§;
                  addr113:
                  this.§<!>§ = null;
                  dispatchEvent(new Event(Event.COMPLETE));
               }
            }
            else
            {
               addr93:
               if(this.§ 7§.§,_§())
               {
                  addr96:
                  this.§6!&§.dispose();
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
