package §_-LP§
{
   import §_-gY§.§_-K6§;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §_-nY§:Vector.<§_-yv§>;
      
      public function Sprite()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§_-QC§(true);
            if(_loc1_)
            {
               addr32:
               super.dispose();
            }
            return;
         }
         §§goto(addr32);
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§_-QC§();
            if(!_loc2_)
            {
               this.§_-nY§ = §_-yv§.§_-Gr§(this,this.§_-nY§);
            }
         }
      }
      
      public function §_-QC§(param1:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§_-yv§ = null;
         if(!(_loc6_ && _loc2_))
         {
            if(this.§_-nY§)
            {
               if(!_loc6_)
               {
                  addr28:
                  if(param1)
                  {
                     addr30:
                     var _loc3_:int = 0;
                     var _loc4_:* = this.§_-nY§;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc4_,_loc3_));
                        if(_loc5_ || this)
                        {
                           if(§§pop())
                           {
                              _loc2_ = §§nextvalue(_loc3_,_loc4_);
                              if(_loc5_)
                              {
                                 _loc2_.dispose();
                              }
                              continue;
                           }
                           if(!_loc5_)
                           {
                              break;
                           }
                           if(!_loc6_)
                           {
                              if(!(_loc6_ && _loc2_))
                              {
                                 this.§_-nY§ = null;
                                 if(_loc5_ || _loc2_)
                                 {
                                 }
                              }
                           }
                           §§goto(addr127);
                        }
                        else
                        {
                           loop1:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 break loop0;
                              }
                              _loc2_ = §§nextvalue(_loc3_,_loc4_);
                              if(_loc5_ || _loc3_)
                              {
                                 _loc2_.reset();
                              }
                              addr123:
                              while(true)
                              {
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     _loc3_ = 0;
                     if(_loc5_ || _loc3_)
                     {
                        _loc4_ = this.§_-nY§;
                        §§goto(addr123);
                     }
                  }
                  §§goto(addr127);
               }
               §§goto(addr30);
            }
            addr127:
            return;
         }
         §§goto(addr28);
      }
      
      public function get §_-Dw§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§_-nY§ == null);
         if(!(_loc1_ && _loc1_))
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      override public function render(param1:§_-K6§, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§_-yv§ = null;
         if(!(_loc7_ && _loc3_))
         {
            if(this.§_-nY§)
            {
               for each(_loc3_ in this.§_-nY§)
               {
                  if(!(_loc7_ && _loc3_))
                  {
                     _loc3_.render(param1,this.alpha * param2);
                  }
               }
               if(!_loc6_)
               {
               }
               addr26:
            }
            else
            {
               super.render(param1,param2);
            }
            return;
         }
         §§goto(addr26);
      }
   }
}
