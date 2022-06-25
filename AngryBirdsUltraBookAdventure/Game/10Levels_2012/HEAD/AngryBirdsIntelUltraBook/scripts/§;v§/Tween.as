package §;v§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class Tween extends EventDispatcher implements §!!8§
   {
       
      
      private var §`N§:Object;
      
      private var §`f§:String;
      
      private var §#e§:Vector.<String>;
      
      private var §+!L§:Vector.<Number>;
      
      private var §4!a§:Vector.<Number>;
      
      private var §%4§:Function;
      
      private var §#0§:Function;
      
      private var §1!1§:Function;
      
      private var §3,§:Array;
      
      private var §!<§:Array;
      
      private var §+!-§:Array;
      
      private var §`!j§:Number;
      
      private var §'D§:Number;
      
      private var §=8§:Number;
      
      private var §?q§:Boolean;
      
      public function Tween(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§`N§ = param1;
            loop1:
            while(true)
            {
               this.§'D§ = 0;
               while(true)
               {
                  this.§`!j§ = Math.max(0.0001,param2);
                  while(true)
                  {
                     this.§=8§ = 0;
                     addr132:
                     while(_loc5_)
                     {
                        this.§`f§ = param3;
                        continue loop0;
                     }
                  }
                  while(!(_loc4_ && param2))
                  {
                     this.§+!L§ = new Vector.<Number>(0);
                     loop8:
                     while(_loc5_)
                     {
                        this.§4!a§ = new Vector.<Number>(0);
                        if(!(_loc5_ || this))
                        {
                           continue;
                        }
                        addr46:
                        if(!_loc5_)
                        {
                           while(true)
                           {
                              this.§#e§ = new Vector.<String>(0);
                              break loop8;
                              §§goto(addr46);
                           }
                           addr105:
                        }
                        if(_loc4_ && param2)
                        {
                           continue loop0;
                        }
                        if(!_loc4_)
                        {
                           if(_loc5_)
                           {
                              return;
                           }
                           continue loop1;
                        }
                        §§goto(addr132);
                     }
                  }
               }
            }
         }
      }
      
      public function animate(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§`N§ != null)
            {
               do
               {
                  this.§#e§.push(param1);
                  loop1:
                  while(true)
                  {
                     this.§+!L§.push(Number.NaN);
                     while(true)
                     {
                        if(!(_loc3_ && this))
                        {
                           if(!_loc4_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
               while(!(_loc4_ || _loc3_));
               
               return;
            }
         }
      }
      
      public function §8k§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.animate("scaleX",param1);
         }
         do
         {
            this.animate("scaleY",param1);
         }
         while(_loc2_ && this);
         
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            this.animate("x",param1);
         }
         do
         {
            this.animate("y",param2);
         }
         while(_loc4_ && param1);
         
      }
      
      public function §&`§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.animate("alpha",param1);
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
         if(_loc12_ || _loc2_)
         {
            §§push(param1);
            if(_loc12_)
            {
               if(§§pop() == 0)
               {
                  if(_loc12_ || this)
                  {
                     §§goto(addr47);
                  }
               }
               §§push(this.§'D§);
               if(!_loc11_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(!_loc11_)
            {
               §§push(this);
               §§push(this.§'D§);
               if(!_loc11_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§'D§ = §§pop();
            }
            while(true)
            {
               §§push(this.§'D§);
               if(!(_loc11_ && _loc3_))
               {
                  §§push(0);
                  loop1:
                  while(true)
                  {
                     §§push(§§pop() < §§pop());
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc11_)
                        {
                           §§push(§§pop());
                           if(!(_loc11_ && _loc2_))
                           {
                              §§push(Boolean(§§pop()));
                           }
                           loop3:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 addr287:
                                 while(true)
                                 {
                                    §§pop();
                                    addr288:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       addr254:
                                       while(true)
                                       {
                                          §§push(§§pop() >= this.§`!j§);
                                          addr257:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                    }
                                 }
                                 addr287:
                              }
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(this.§`7§);
                                          while(true)
                                          {
                                             §§push(null);
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                while(!_loc11_)
                                                {
                                                   §§push(!§§pop());
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc12_ || _loc3_)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc12_ || this)
                                                         {
                                                            if(_loc11_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr236);
                                                   }
                                                   continue loop3;
                                                }
                                                §§goto(addr257);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr260);
                                 }
                              }
                           }
                        }
                        §§goto(addr287);
                     }
                     addr147:
                     while(true)
                     {
                        if(_loc11_ && this)
                        {
                           continue loop1;
                        }
                        §§goto(addr154);
                     }
                  }
               }
               §§goto(addr315);
               if(!(_loc12_ || _loc3_))
               {
                  continue;
               }
               §§push(this.§'D§);
               if(_loc12_)
               {
                  if(_loc12_ || _loc2_)
                  {
                     §§push(0);
                     if(!(_loc11_ && this))
                     {
                        §§push(§§pop() >= §§pop());
                        if(!(_loc11_ && this))
                        {
                           §§goto(addr85);
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr147);
                  }
                  §§goto(addr139);
               }
               §§goto(addr315);
            }
         }
         addr47:
      }
      
      public function get §8&§() : Boolean
      {
         return this.§'D§ >= this.§`!j§;
      }
      
      public function get target() : Object
      {
         return this.§`N§;
      }
      
      public function get §!!V§() : String
      {
         return this.§`f§;
      }
      
      public function get §2L§() : Number
      {
         return this.§`!j§;
      }
      
      public function get §#!@§() : Number
      {
         return this.§'D§;
      }
      
      public function get delay() : Number
      {
         return this.§=8§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this);
            §§push(this.§'D§);
            if(!(_loc3_ && this))
            {
               §§push(this.§=8§);
               if(!_loc3_)
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc3_)
                  {
                     addr78:
                     §§push(§§pop() - param1);
                  }
                  §§pop().§'D§ = §§pop();
                  do
                  {
                     this.§=8§ = param1;
                  }
                  while(!(_loc2_ || _loc2_));
                  
                  return;
                  addr80:
               }
            }
            §§goto(addr78);
         }
         §§goto(addr80);
      }
      
      public function get §0n§() : Boolean
      {
         return this.§?q§;
      }
      
      public function set §0n§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§?q§ = param1;
         }
      }
      
      public function get §`7§() : Function
      {
         return this.§%4§;
      }
      
      public function set §`7§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%4§ = param1;
         }
      }
      
      public function get §0>§() : Function
      {
         return this.§#0§;
      }
      
      public function set §0>§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§#0§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§1!1§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§1!1§ = param1;
         }
      }
      
      public function get §7!4§() : Array
      {
         return this.§3,§;
      }
      
      public function set §7!4§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§3,§ = param1;
         }
      }
      
      public function get §]!X§() : Array
      {
         return this.§!<§;
      }
      
      public function set §]!X§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§!<§ = param1;
         }
      }
      
      public function get §%M§() : Array
      {
         return this.§+!-§;
      }
      
      public function set §%M§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+!-§ = param1;
         }
      }
   }
}
