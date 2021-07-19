package §1f§
{
   import §"k§.§&"r§;
   import §"k§.§6!a§;
   import §,!,§.§0!d§;
   import §]Q§.§2T§;
   import flash.display.Sprite;
   
   public class §"N§ extends Sprite
   {
       
      
      protected var §=`§:§=#3§;
      
      protected var §=M§:§&"r§;
      
      protected var §,!t§:Class;
      
      protected var §6"?§:Number;
      
      protected var §[!4§:Number;
      
      protected var §;#7§:§6!a§;
      
      public function §"N§(param1:Number, param2:Number, param3:Class, param4:§&"r§)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            super();
            loop0:
            while(true)
            {
               this.§6"?§ = param1;
               while(true)
               {
                  this.§[!4§ = param2;
                  while(true)
                  {
                     §§push(this);
                     if(!_loc5_)
                     {
                        §§pop().§,!t§ = param3 || §0!d§;
                        continue;
                     }
                     §§goto(addr70);
                  }
                  if(!(_loc6_ || this))
                  {
                     continue;
                  }
                  if(_loc5_)
                  {
                     continue loop0;
                  }
                  §§goto(addr55);
               }
            }
         }
         §§goto(addr80);
      }
      
      protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§=`§ = new §=#3§(this.§6"?§,this.§[!4§,[],this.§,!t§,2,15);
            do
            {
               addChild(this.§=`§.scrollerSprite);
            }
            while(!_loc1_);
            
         }
      }
      
      public function showLevelScores(param1:String, param2:String, param3:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§6!a§ = this.§=M§.§[n§(param1,param2,param3);
         if(!(_loc6_ && this))
         {
            this.showScores(_loc4_);
            loop0:
            for(; !_loc4_.isLoading; while(true)
            {
               if(!(_loc6_ && param2))
               {
                  break loop0;
               }
               continue loop0;
            })
            {
               if(!_loc5_)
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            _loc4_.loadItems(0,0);
            §§goto(addr56);
         }
      }
      
      public function showTotalScores(param1:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§6!a§ = this.§=M§.getTotalScores();
         if(_loc4_)
         {
            this.showScores(_loc2_);
         }
      }
      
      public function showScores(param1:§6!a§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(param1 != this.§;#7§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§;#7§);
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§;#7§);
                           loop3:
                           while(true)
                           {
                              §§push(§2T§.§-D§);
                              loop4:
                              while(true)
                              {
                                 §§pop().removeEventListener(§§pop(),this.onCurrentScoresDataLoaded);
                                 while(true)
                                 {
                                    addr59:
                                    if(_loc2_ || this)
                                    {
                                       if(_loc2_)
                                       {
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             if(param1.isLoading)
                                             {
                                                addr32:
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   this.§%B§(true);
                                                }
                                                if(_loc3_ && _loc2_)
                                                {
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         while(!_loc3_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               return;
                                                            }
                                                            addr151:
                                                            this.§=`§.data = this.§;#7§.data;
                                                            continue loop9;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this.§;#7§);
                                                            if(_loc3_ && param1)
                                                            {
                                                               break;
                                                            }
                                                            if(!(_loc2_ || _loc3_))
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§push(§2T§.§-D§);
                                                            if(_loc3_ && _loc2_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            §§pop().addEventListener(§§pop(),this.onCurrentScoresDataLoaded);
                                                            §§goto(addr115);
                                                         }
                                                         addr115:
                                                         continue loop3;
                                                         addr124:
                                                      }
                                                      §§goto(addr59);
                                                   }
                                                   continue;
                                                }
                                             }
                                             return;
                                          }
                                          continue loop0;
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        this.§;#7§ = param1;
                        §§goto(addr124);
                     }
                  }
               }
            }
            §§goto(addr151);
         }
         §§goto(addr152);
      }
      
      protected function onCurrentScoresDataLoaded(param1:§2T§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§=`§.data = this.§;#7§.data;
            loop0:
            for(; !this.§;#7§.isLoading; while(true)
            {
               if(_loc2_ || _loc2_)
               {
                  break loop0;
               }
               continue loop0;
            })
            {
               if(!_loc2_)
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            this.§%B§(false);
            §§goto(addr48);
         }
      }
      
      override public function set height(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§[!4§ = param1;
            do
            {
               this.resize();
            }
            while(_loc3_);
            
         }
      }
      
      protected function resize() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§=`§.setHeight(this.§[!4§);
         }
      }
      
      public function scrollItemToCenter(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:int = this.§=`§.offset;
         var _loc4_:int = Math.floor(this.§=`§.visibleItemsCount / 2);
         §§push(param1);
         if(_loc7_)
         {
            §§push(§§pop() - _loc4_);
            if(!_loc6_)
            {
               §§push(§§pop() - _loc3_);
            }
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!_loc6_)
         {
            §§push(this.§=`§);
            §§push(_loc5_);
            §§push(param2);
            if(_loc7_)
            {
               §§push(!§§pop());
            }
            §§pop().scroll(§§pop(),§§pop());
         }
      }
      
      protected function §%B§(param1:Boolean) : void
      {
      }
   }
}
