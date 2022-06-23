package §5`§
{
   import §+!%§.§1!E§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §@B§ extends EventDispatcher
   {
       
      
      private var §]X§:String = "";
      
      private var §7H§:String;
      
      private var §4!H§:URLLoader;
      
      private var §^2§:Dictionary;
      
      private var §4J§:String = null;
      
      private var §`z§:String = null;
      
      private var §-d§:String = null;
      
      private var §;!F§:Boolean;
      
      private var §0!E§:§1!E§;
      
      private var §^S§:§?y§;
      
      private var §'K§:Vector.<§?y§>;
      
      private var §[!+§:String = "pak";
      
      private var §!g§:Boolean = true;
      
      private var §2^§:int = 1;
      
      public function §@B§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§^2§ = new Dictionary();
         }
         this.§'K§ = new Vector.<§?y§>();
         super();
         if(!_loc6_)
         {
            this.§]X§ = param2;
            this.§7H§ = param1;
            this.§!g§ = param3;
            if(!(_loc6_ && param1))
            {
               addr68:
               this.§2^§ = Math.max(1,param4);
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function get textureManager() : §?y§
      {
         return this.§^S§;
      }
      
      public function § b§(param1:String) : Boolean
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
         §§push(this.§^2§[param1] == null);
         if(_loc3_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      private function §??§(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§?y§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§'K§.length)
            {
               return false;
            }
            _loc3_ = this.§'K§[_loc2_];
            if(_loc4_)
            {
               break;
            }
            if(_loc3_.id == param1)
            {
               this.§^S§ = _loc3_;
               this.§4J§ = param1;
               if(_loc5_ || this)
               {
                  this.§'K§.splice(_loc2_,1);
                  if(_loc5_)
                  {
                     this.§'K§.unshift(this.§^S§);
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
      
      public function §[!2§(param1:String) : void
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
                  if(this.§]G§())
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!this.§=B§())
                        {
                           this.§-d§ = param1;
                           return;
                        }
                        addr71:
                        if(this.§ b§(param1))
                        {
                           this.§??§(param1);
                           if(!(_loc2_ && this))
                           {
                              addr86:
                              §§push(param1 == this.§4J§);
                              if(!(param1 == this.§4J§))
                              {
                                 §§pop();
                                 if(!_loc2_)
                                 {
                                    addr104:
                                    §§push(this.§!g§);
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
                           this.§3=§(param1);
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
                        this.§]Z§(param1,false);
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
      
      private function §3=§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = "";
         §§push(this.§]X§);
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
                           §§push(this.§]X§);
                           if(_loc3_ || param1)
                           {
                              addr58:
                              if(§§pop().length > 0)
                              {
                                 addr66:
                                 §§push("?version=");
                                 if(_loc3_)
                                 {
                                    §§push(§§pop() + this.§]X§);
                                 }
                                 _loc2_ = §§pop();
                                 if(!_loc4_)
                                 {
                                    addr69:
                                    this.§`z§ = param1;
                                    if(!(_loc4_ && this))
                                    {
                                       this.§4!H§ = new URLLoader();
                                       if(_loc3_ || _loc3_)
                                       {
                                          this.§4!H§.dataFormat = URLLoaderDataFormat.BINARY;
                                          if(_loc3_ || this)
                                          {
                                             addr112:
                                             this.§4!H§.addEventListener(Event.COMPLETE,this.onComplete);
                                             this.§4!H§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                             if(_loc3_ || _loc2_)
                                             {
                                             }
                                             §§goto(addr175);
                                          }
                                          §§goto(addr157);
                                       }
                                       this.§4!H§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          addr157:
                                          this.§4!H§.load(new URLRequest(this.§7H§ + "packages/" + param1 + "." + this.§[!+§ + _loc2_));
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
      
      private function §]G§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(Boolean(this.§4!H§));
            if(_loc2_ || this)
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && this))
                  {
                     §§pop();
                     addr54:
                     §§push(this.§;!F§);
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
      
      private function §=B§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§4!H§)
            {
               if(_loc1_ || this)
               {
                  this.§4!H§.removeEventListener(Event.COMPLETE,this.onComplete);
               }
               this.§4!H§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               this.§4!H§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
               if(_loc1_ || _loc1_)
               {
                  addr76:
                  this.§4!H§.close();
                  this.§4!H§ = null;
                  §§goto(addr82);
               }
               §§goto(addr103);
            }
            addr82:
            §§push(this.§;!F§);
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
         this.§4!H§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§4!H§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         if(_loc2_)
         {
            this.§4!H§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
         this.§^2§[this.§`z§] = this.§4!H§.data;
         this.§4!H§ = null;
         this.§]Z§(this.§`z§,true);
      }
      
      private function §]Z§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§?y§ = null;
         if(!_loc4_)
         {
            this.§;!F§ = true;
            if(!(_loc4_ && _loc3_))
            {
               this.§`z§ = param1;
            }
         }
         while(this.§'K§.length >= this.§2^§)
         {
            _loc3_ = this.§'K§.pop();
            if(_loc5_ || _loc3_)
            {
               _loc3_.dispose();
            }
         }
         §§push(this.§0!E§);
         if(!(_loc4_ && _loc3_))
         {
            if(§§pop())
            {
               if(_loc5_)
               {
                  §§push(this.§0!E§);
                  if(_loc5_ || _loc3_)
                  {
                     §§pop().dispose();
                     if(_loc5_ || param1)
                     {
                        addr96:
                        this.§^S§ = new §?y§(param1);
                        if(!(_loc4_ && param2))
                        {
                           this.§'K§.unshift(this.§^S§);
                        }
                        this.§0!E§ = new §1!E§();
                        §§push(this.§0!E§);
                        if(_loc5_ || param1)
                        {
                           §§pop().addEventListener(Event.COMPLETE,this.§+1§);
                           if(!(_loc4_ && param1))
                           {
                              addr150:
                              this.§0!E§.§6!'§(this.§^2§[this.§`z§],param2);
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
         this.§4!H§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§4!H§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§4!H§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         if(!(_loc3_ && _loc2_))
         {
            this.§4!H§.close();
            if(!(_loc3_ && _loc2_))
            {
               this.§4!H§ = null;
               this.§`z§ = null;
               dispatchEvent(new Event(Event.CANCEL));
            }
         }
      }
      
      private function §+1§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            this.§;!F§ = false;
            if(!(_loc4_ && _loc2_))
            {
               §§push(this.§0!E§);
               if(!(_loc4_ && this))
               {
                  §§pop().removeEventListener(Event.COMPLETE,this.§+1§);
                  addr48:
                  if(this.§-d§)
                  {
                     this.§[!2§(this.§-d§);
                     if(!(_loc4_ && _loc3_))
                     {
                        this.§-d§ = null;
                     }
                     return;
                  }
                  addr76:
                  §§push(this.§0!E§);
               }
               §§push(§§pop().§;Y§.§[F§);
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
                        this.§4+§();
                        break;
                     }
                     break;
                  }
                  this.§^S§.§6v§(this.§0!E§.§;Y§.§"!=§(_loc3_));
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
      
      public function §4+§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§]G§());
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
                        §§push(this.§0!E§);
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
               this.§0!E§ = null;
               if(_loc2_)
               {
                  this.§4J§ = this.§`z§;
                  addr113:
                  this.§`z§ = null;
                  dispatchEvent(new Event(Event.COMPLETE));
               }
            }
            else
            {
               addr93:
               if(this.§^S§.§4+§())
               {
                  addr96:
                  this.§0!E§.dispose();
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
