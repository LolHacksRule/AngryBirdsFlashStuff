package §,%§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §#!+§ extends EventDispatcher implements §&!Z§
   {
       
      
      private var §8!$§:Object;
      
      private var §%Q§:String;
      
      private var §"t§:Vector.<String>;
      
      private var §?!Y§:Vector.<Number>;
      
      private var §?!§:Vector.<Number>;
      
      private var §>!n§:Function;
      
      private var §&!+§:Function;
      
      private var §2S§:Function;
      
      private var §%K§:Array;
      
      private var §7x§:Array;
      
      private var §@!k§:Array;
      
      private var § @§:Number;
      
      private var §<!J§:Number;
      
      private var § V§:Number;
      
      private var §]@§:Boolean;
      
      public function §#!+§(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            super();
            this.§8!$§ = param1;
            if(_loc4_)
            {
               this.§<!J§ = 0;
               this.§ @§ = Math.max(0.0001,param2);
               this.§ V§ = 0;
               addr33:
               if(!_loc5_)
               {
                  this.§%Q§ = param3;
                  if(!_loc5_)
                  {
                     this.§]@§ = false;
                     if(_loc4_ || this)
                     {
                        addr79:
                        this.§"t§ = new Vector.<String>(0);
                        if(_loc4_)
                        {
                           addr89:
                           this.§?!Y§ = new Vector.<Number>(0);
                        }
                     }
                     this.§?!§ = new Vector.<Number>(0);
                     return;
                  }
                  §§goto(addr79);
               }
               §§goto(addr89);
            }
            §§goto(addr79);
         }
         §§goto(addr33);
      }
      
      public function §+-§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§8!$§ == null)
            {
               if(!_loc4_)
               {
                  return;
               }
            }
            else
            {
               this.§"t§.push(param1);
               if(!_loc4_)
               {
                  this.§?!Y§.push(Number.NaN);
                  if(_loc4_ && this)
                  {
                  }
                  §§goto(addr59);
               }
               this.§?!§.push(param2);
            }
         }
         addr59:
      }
      
      public function §[E§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§+-§("scaleX",param1);
            if(!_loc2_)
            {
               this.§+-§("scaleY",param1);
            }
         }
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§+-§("x",param1);
            if(_loc3_ || this)
            {
               this.§+-§("y",param2);
            }
         }
      }
      
      public function §9!7§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+-§("alpha",param1);
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Function = null;
         var _loc10_:Number = NaN;
         if(!(_loc11_ && this))
         {
            §§push(param1);
            if(!_loc11_)
            {
               if(§§pop() == 0)
               {
                  if(!(_loc11_ && this))
                  {
                     return;
                  }
                  addr48:
                  §§push(this.§<!J§);
                  if(!(_loc11_ && param1))
                  {
                     addr57:
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(_loc12_)
                  {
                     §§push(this);
                     §§push(this.§<!J§);
                     if(!_loc11_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§<!J§ = §§pop();
                     §§push(this.§<!J§);
                     if(_loc12_ || _loc2_)
                     {
                        §§push(0);
                        if(!_loc11_)
                        {
                           §§push(§§pop() < §§pop());
                           §§push(§§pop() < §§pop());
                           if(!_loc11_)
                           {
                              if(!§§pop())
                              {
                                 §§pop();
                                 if(_loc12_)
                                 {
                                    §§push(_loc2_);
                                    if(!(_loc11_ && _loc2_))
                                    {
                                       addr97:
                                       §§push(§§pop() >= this.§ @§);
                                       if(!_loc11_)
                                       {
                                          addr102:
                                          if(§§pop())
                                          {
                                             return;
                                          }
                                          §§push(this.§17§);
                                          if(_loc12_ || param1)
                                          {
                                             §§push(null);
                                             if(_loc12_ || _loc3_)
                                             {
                                                §§push(§§pop() != §§pop());
                                                if(_loc12_)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc11_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc12_ || param1)
                                                         {
                                                            §§pop();
                                                            addr137:
                                                            §§push(_loc2_);
                                                            if(_loc12_)
                                                            {
                                                               addr140:
                                                               §§push(0);
                                                               if(!_loc11_)
                                                               {
                                                                  addr143:
                                                                  §§push(§§pop() <= §§pop());
                                                                  if(!(_loc11_ && param1))
                                                                  {
                                                                     addr152:
                                                                     §§push(§§pop() && this.§ @§);
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc11_ && _loc2_))
                                                                     {
                                                                        addr171:
                                                                        this.§17§.apply(null,this.§%K§);
                                                                        addr174:
                                                                        §§push(Math.min(this.§ @§,this.§<!J§) / this.§ @§);
                                                                        if(!(_loc11_ && _loc2_))
                                                                        {
                                                                           §§goto(addr190);
                                                                        }
                                                                        §§goto(addr191);
                                                                        addr170:
                                                                     }
                                                                  }
                                                                  §§goto(addr174);
                                                               }
                                                               §§goto(addr159);
                                                            }
                                                            §§goto(addr190);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr152);
                                             }
                                             §§goto(addr171);
                                          }
                                          §§goto(addr170);
                                       }
                                       §§goto(addr153);
                                    }
                                    §§goto(addr140);
                                 }
                                 §§goto(addr171);
                              }
                              §§goto(addr102);
                           }
                           §§goto(addr152);
                        }
                        §§goto(addr143);
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr137);
               }
               §§goto(addr48);
            }
            §§goto(addr57);
         }
         §§goto(addr48);
      }
      
      public function get §`Q§() : Boolean
      {
         return this.§<!J§ >= this.§ @§;
      }
      
      public function get target() : Object
      {
         return this.§8!$§;
      }
      
      public function get §3!b§() : String
      {
         return this.§%Q§;
      }
      
      public function get §=W§() : Number
      {
         return this.§ @§;
      }
      
      public function get currentTime() : Number
      {
         return this.§<!J§;
      }
      
      public function get delay() : Number
      {
         return this.§ V§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this);
            §§push(this.§<!J§);
            if(!(_loc3_ && param1))
            {
               §§push(this.§ V§);
               if(_loc2_)
               {
                  §§goto(addr67);
               }
               §§push(§§pop() - §§pop());
            }
            addr67:
            §§push(§§pop() + §§pop());
            if(!(_loc3_ && this))
            {
               §§push(param1);
            }
            §§pop().§<!J§ = §§pop();
            if(!(_loc3_ && this))
            {
               addr75:
               this.§ V§ = param1;
            }
            return;
         }
         §§goto(addr75);
      }
      
      public function get §=!]§() : Boolean
      {
         return this.§]@§;
      }
      
      public function set §=!]§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§]@§ = param1;
         }
      }
      
      public function get §17§() : Function
      {
         return this.§>!n§;
      }
      
      public function set §17§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§>!n§ = param1;
         }
      }
      
      public function get onUpdate() : Function
      {
         return this.§&!+§;
      }
      
      public function set onUpdate(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&!+§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§2S§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§2S§ = param1;
         }
      }
      
      public function get §<t§() : Array
      {
         return this.§%K§;
      }
      
      public function set §<t§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§%K§ = param1;
         }
      }
      
      public function get §1!V§() : Array
      {
         return this.§7x§;
      }
      
      public function set §1!V§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§7x§ = param1;
         }
      }
      
      public function get §%!t§() : Array
      {
         return this.§@!k§;
      }
      
      public function set §%!t§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§@!k§ = param1;
         }
      }
   }
}
