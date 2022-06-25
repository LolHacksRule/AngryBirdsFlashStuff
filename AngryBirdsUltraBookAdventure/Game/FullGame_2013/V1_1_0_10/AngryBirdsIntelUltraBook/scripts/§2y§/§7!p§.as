package §2y§
{
   import §@!&§.§-0§;
   import flash.display.MovieClip;
   
   public class §7!p§ extends §-0§
   {
      
      private static const §8!'§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §8!'§ = 1000 / 60;
         }
      }
      
      private var §5w§:String;
      
      private var §#v§:String;
      
      private var §=t§:int = 0;
      
      private var §7§:int = 0;
      
      private var §=a§:Number = 0;
      
      private var §]C§:Boolean = false;
      
      public function §7!p§(param1:XML, param2:§^! §, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function §@$§(param1:Number) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(_loc5_)
         {
            §§push(this);
            §§push(this.§=a§);
            if(_loc5_ || param1)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§=a§ = §§pop();
            if(_loc5_ || this)
            {
               §§push(this);
               §§push(this.§=a§);
               if(_loc5_ || _loc2_)
               {
                  §§push(§§pop() / §8!'§);
               }
               §§pop().§7§ = §§pop();
            }
         }
         loop0:
         while(true)
         {
            if(this.§=t§ >= this.§7§)
            {
               loop4:
               while(true)
               {
                  this.§=t§ = this.§7§;
                  loop5:
                  while(_loc5_)
                  {
                     this.§#v§ = this.§5w§;
                     if(!(_loc5_ || param1))
                     {
                        continue;
                     }
                     if(!_loc5_)
                     {
                        continue loop4;
                     }
                     if(_loc5_)
                     {
                        if(!_loc6_)
                        {
                           §§push(_loc2_);
                           if(!_loc6_)
                           {
                              if(!(_loc6_ && _loc3_))
                              {
                                 if(_loc5_ || this)
                                 {
                                    break loop0;
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    if(§§pop() != this.§#v§)
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          §§push(this.§5w§);
                                          addr154:
                                          while(true)
                                          {
                                             if(!(_loc6_ && param1))
                                             {
                                                addr161:
                                                continue loop0;
                                             }
                                             continue loop3;
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(this.§5w§);
                                          continue loop7;
                                       }
                                       addr208:
                                    }
                                    continue loop0;
                                 }
                              }
                              while(true)
                              {
                                 §§push(§§pop());
                              }
                           }
                           while(true)
                           {
                              _loc2_ = §§pop();
                              break loop5;
                           }
                        }
                        while(true)
                        {
                           this.§=a§ = this.§7§ * §8!'§;
                        }
                        addr167:
                     }
                     §§goto(addr154);
                  }
                  while(true)
                  {
                     if(_loc5_ || param1)
                     {
                        addr195:
                        if(!(_loc6_ && param1))
                        {
                           this.§7§ = this.§=t§;
                           §§goto(addr167);
                        }
                        else
                        {
                           while(true)
                           {
                              this.§5w§ = mClip.currentLabel;
                              §§goto(addr195);
                           }
                           addr213:
                        }
                     }
                     §§goto(addr208);
                  }
               }
            }
            else
            {
               var _loc3_:*;
               §§push((_loc3_ = this).§=t§);
               if(!(_loc6_ && this))
               {
                  §§push(§§pop() + 1);
               }
               var _loc4_:* = §§pop();
               if(_loc5_)
               {
                  _loc3_.§=t§ = _loc4_;
               }
               if(!(_loc6_ && param1))
               {
                  mClip.gotoAndStop(this.§=t§);
                  §§goto(addr213);
               }
            }
            §§goto(addr161);
         }
         return §§pop();
      }
      
      public function §=0§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §&3§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §=!C§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §>Z§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            mClip.gotoAndStop(param1);
            while(true)
            {
               this.§5w§ = param1;
            }
            addr102:
         }
         loop1:
         while(true)
         {
            this.§#v§ = param1;
            loop2:
            do
            {
               if(!(_loc3_ || this))
               {
                  continue loop1;
               }
               this.§7§ = mClip.currentFrame;
               while(!_loc2_)
               {
                  this.§=t§ = mClip.currentFrame;
                  do
                  {
                     this.§=a§ = mClip.currentFrame * §8!'§;
                  }
                  while(_loc2_);
                  
                  if(!(_loc2_ && _loc2_))
                  {
                     continue loop2;
                  }
               }
               §§goto(addr102);
            }
            while(!(_loc3_ || param1));
            
            return;
         }
      }
      
      public function §-E§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §?u§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §!!#§() : Boolean
      {
         return this.§]C§;
      }
      
      public function set §!!#§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§]C§ = param1;
         }
      }
   }
}
