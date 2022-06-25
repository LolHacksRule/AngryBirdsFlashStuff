package §2!9§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class Tween extends EventDispatcher implements §"m§
   {
       
      
      private var §#!+§:Object;
      
      private var §^T§:String;
      
      private var §0!Y§:Vector.<String>;
      
      private var §0b§:Vector.<Number>;
      
      private var §3!?§:Vector.<Number>;
      
      private var §%i§:Function;
      
      private var §<X§:Function;
      
      private var §>!@§:Function;
      
      private var §4!b§:Array;
      
      private var §!=§:Array;
      
      private var § !@§:Array;
      
      private var §^?§:Number;
      
      private var §?u§:Number;
      
      private var §'r§:Number;
      
      private var §]!]§:Boolean;
      
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
            this.§#!+§ = param1;
            loop1:
            while(true)
            {
               this.§?u§ = 0;
               while(true)
               {
                  this.§^?§ = Math.max(0.0001,param2);
                  while(true)
                  {
                     this.§'r§ = 0;
                     addr132:
                     while(_loc5_)
                     {
                        this.§^T§ = param3;
                        continue loop0;
                     }
                  }
                  while(!(_loc4_ && param2))
                  {
                     this.§0b§ = new Vector.<Number>(0);
                     loop8:
                     while(_loc5_)
                     {
                        this.§3!?§ = new Vector.<Number>(0);
                        if(!(_loc5_ || this))
                        {
                           continue;
                        }
                        addr46:
                        if(!_loc5_)
                        {
                           while(true)
                           {
                              this.§0!Y§ = new Vector.<String>(0);
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
            if(this.§#!+§ != null)
            {
               do
               {
                  this.§0!Y§.push(param1);
                  loop1:
                  while(true)
                  {
                     this.§0b§.push(Number.NaN);
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
      
      public function §4!a§(param1:Number) : void
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
      
      public function §7!P§(param1:Number) : void
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
               §§push(this.§?u§);
               if(!_loc11_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(!_loc11_)
            {
               §§push(this);
               §§push(this.§?u§);
               if(!_loc11_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§?u§ = §§pop();
            }
            while(true)
            {
               §§push(this.§?u§);
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
                                          §§push(§§pop() >= this.§^?§);
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
                                          §§push(this.§&i§);
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
               §§push(this.§?u§);
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
      
      public function get §6!5§() : Boolean
      {
         return this.§?u§ >= this.§^?§;
      }
      
      public function get target() : Object
      {
         return this.§#!+§;
      }
      
      public function get §77§() : String
      {
         return this.§^T§;
      }
      
      public function get §?!D§() : Number
      {
         return this.§^?§;
      }
      
      public function get §6§() : Number
      {
         return this.§?u§;
      }
      
      public function get delay() : Number
      {
         return this.§'r§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this);
            §§push(this.§?u§);
            if(!(_loc3_ && this))
            {
               §§push(this.§'r§);
               if(!_loc3_)
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc3_)
                  {
                     addr78:
                     §§push(§§pop() - param1);
                  }
                  §§pop().§?u§ = §§pop();
                  do
                  {
                     this.§'r§ = param1;
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
      
      public function get §0!A§() : Boolean
      {
         return this.§]!]§;
      }
      
      public function set §0!A§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§]!]§ = param1;
         }
      }
      
      public function get §&i§() : Function
      {
         return this.§%i§;
      }
      
      public function set §&i§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%i§ = param1;
         }
      }
      
      public function get §;!S§() : Function
      {
         return this.§<X§;
      }
      
      public function set §;!S§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§<X§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§>!@§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§>!@§ = param1;
         }
      }
      
      public function get §4_§() : Array
      {
         return this.§4!b§;
      }
      
      public function set §4_§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§4!b§ = param1;
         }
      }
      
      public function get §"!d§() : Array
      {
         return this.§!=§;
      }
      
      public function set §"!d§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§!=§ = param1;
         }
      }
      
      public function get §2d§() : Array
      {
         return this.§ !@§;
      }
      
      public function set §2d§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§ !@§ = param1;
         }
      }
   }
}
