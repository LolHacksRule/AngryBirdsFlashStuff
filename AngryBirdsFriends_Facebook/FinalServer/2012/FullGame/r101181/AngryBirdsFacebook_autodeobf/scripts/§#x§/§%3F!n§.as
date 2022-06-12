package §#x§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §?!n§ extends EventDispatcher implements §2n§
   {
       
      
      private var § !8§:Object;
      
      private var §-5§:String;
      
      private var §#">§:Vector.<String>;
      
      private var §38§:Vector.<Number>;
      
      private var §-!r§:Vector.<Number>;
      
      private var §@z§:Function;
      
      private var §,!>§:Function;
      
      private var §>!8§:Function;
      
      private var §true§:Array;
      
      private var §^!h§:Array;
      
      private var §@J§:Array;
      
      private var §#!O§:Number;
      
      private var §8"1§:Number;
      
      private var §0!t§:Number;
      
      private var §!!G§:Boolean;
      
      public function §?!n§(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            super();
            while(true)
            {
               this.§ !8§ = param1;
               while(true)
               {
                  this.§8"1§ = 0;
                  loop2:
                  while(true)
                  {
                     this.§#!O§ = Math.max(0.0001,param2);
                     addr153:
                     while(true)
                     {
                        this.§0!t§ = 0;
                        addr145:
                        while(true)
                        {
                           this.§-5§ = param3;
                           continue loop2;
                        }
                     }
                  }
                  if(!(_loc4_ || this))
                  {
                     continue;
                  }
                  this.§!!G§ = false;
                  loop6:
                  for(; _loc4_; loop8:
                  while(_loc4_ || this)
                  {
                     §§goto(addr80);
                     while(true)
                     {
                        this.§-!r§ = new Vector.<Number>(0);
                        if(!(_loc4_ || param1))
                        {
                           continue loop8;
                        }
                        §§goto(addr44);
                     }
                     §§goto(addr53);
                  })
                  {
                     this.§#">§ = new Vector.<String>(0);
                     while(true)
                     {
                        this.§38§ = new Vector.<Number>(0);
                        continue loop6;
                        addr44:
                        if(!(_loc4_ || param2))
                        {
                           continue;
                        }
                        if(!_loc5_)
                        {
                           return;
                           addr53:
                        }
                        §§goto(addr145);
                     }
                  }
                  §§goto(addr153);
               }
               if(_loc5_ && param2)
               {
                  continue;
               }
               §§goto(addr94);
            }
         }
         §§goto(addr94);
      }
      
      public function §<"-§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§ !8§ != null)
            {
               loop0:
               while(true)
               {
                  this.§#">§.push(param1);
                  addr80:
                  while(true)
                  {
                     this.§38§.push(Number.NaN);
                     while(_loc4_)
                     {
                        if(_loc4_)
                        {
                           this.§-!r§.push(param2);
                           if(_loc3_ && param1)
                           {
                              continue;
                           }
                           if(!(_loc3_ && param2))
                           {
                              return;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr80);
      }
      
      public function §<y§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<"-§("scaleX",param1);
         }
         do
         {
            this.§<"-§("scaleY",param1);
         }
         while(_loc3_ && _loc2_);
         
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§<"-§("x",param1);
         }
         do
         {
            this.§<"-§("y",param2);
         }
         while(!(_loc4_ || param1));
         
      }
      
      public function §>H§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<"-§("alpha",param1);
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Function = null;
         var _loc10_:Number = NaN;
         if(!_loc12_)
         {
            §§push(param1);
            if(!(_loc12_ && _loc2_))
            {
               if(§§pop() == 0)
               {
                  if(_loc11_ || param1)
                  {
                     return;
                  }
                  addr47:
                  §§push(this.§8"1§);
                  if(_loc11_ || param1)
                  {
                     addr56:
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(_loc11_)
                  {
                     §§push(this);
                     §§push(this.§8"1§);
                     if(!_loc12_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§8"1§ = §§pop();
                     loop0:
                     while(true)
                     {
                        §§push(this.§8"1§);
                        if(_loc11_ || param1)
                        {
                           §§push(0);
                           while(true)
                           {
                              §§push(§§pop() < §§pop());
                              if(_loc11_ || _loc3_)
                              {
                                 §§push(§§pop());
                                 loop2:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          addr181:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc11_ || _loc2_)
                                                {
                                                   if(!_loc12_)
                                                   {
                                                      return;
                                                   }
                                                   continue loop0;
                                                }
                                                addr192:
                                                while(true)
                                                {
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(this.§9!5§);
                                                addr154:
                                                while(true)
                                                {
                                                   §§push(null);
                                                   addr155:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      addr156:
                                                      while(true)
                                                      {
                                                         §§push(!§§pop());
                                                         addr157:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            continue loop2;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr180:
                                    }
                                 }
                              }
                              §§goto(addr214);
                           }
                        }
                        §§goto(addr244);
                     }
                  }
                  §§goto(addr174);
               }
               §§goto(addr47);
            }
            §§goto(addr56);
         }
         §§goto(addr47);
      }
      
      public function get §!U§() : Boolean
      {
         return this.§8"1§ >= this.§#!O§;
      }
      
      public function get target() : Object
      {
         return this.§ !8§;
      }
      
      public function get §[1§() : String
      {
         return this.§-5§;
      }
      
      public function get § B§() : Number
      {
         return this.§#!O§;
      }
      
      public function get §^#§() : Number
      {
         return this.§8"1§;
      }
      
      public function get delay() : Number
      {
         return this.§0!t§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.§8"1§);
            if(_loc3_)
            {
               §§push(this.§0!t§);
               if(!_loc2_)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc3_ || _loc2_)
                  {
                     addr74:
                     §§push(§§pop() - param1);
                  }
                  §§pop().§8"1§ = §§pop();
                  do
                  {
                     this.§0!t§ = param1;
                  }
                  while(!(_loc3_ || this));
                  
                  return;
                  addr55:
               }
            }
            §§goto(addr74);
         }
         §§goto(addr55);
      }
      
      public function get §=b§() : Boolean
      {
         return this.§!!G§;
      }
      
      public function set §=b§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§!!G§ = param1;
         }
      }
      
      public function get §9!5§() : Function
      {
         return this.§@z§;
      }
      
      public function set §9!5§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§@z§ = param1;
         }
      }
      
      public function get §["B§() : Function
      {
         return this.§,!>§;
      }
      
      public function set §["B§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,!>§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§>!8§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§>!8§ = param1;
         }
      }
      
      public function get §'!N§() : Array
      {
         return this.§true§;
      }
      
      public function set §'!N§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§true§ = param1;
         }
      }
      
      public function get §<!I§() : Array
      {
         return this.§^!h§;
      }
      
      public function set §<!I§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§^!h§ = param1;
         }
      }
      
      public function get §?m§() : Array
      {
         return this.§@J§;
      }
      
      public function set §?m§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§@J§ = param1;
         }
      }
   }
}
