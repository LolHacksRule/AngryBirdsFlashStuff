package §+!c§
{
   import §7!F§.§0'§;
   import §7!F§.§`y§;
   import com.angrybirds.§,!q§;
   
   public class §;!d§ extends §0'§
   {
      
      private static const §@T§:String = "ExtraBirdGlow";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §@T§ = "ExtraBirdGlow";
         }
      }
      
      private var §&#B§:uint;
      
      private var §^"<§:Boolean = false;
      
      public function §;!d§(param1:uint = 16777215)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc2_:§`y§ = §,!q§.§9!,§.animationManager;
         if(!_loc6_)
         {
            if(!_loc2_.getAnimation(§@T§))
            {
               addr33:
               _loc3_ = [];
               if(!_loc6_)
               {
                  _loc4_ = 1;
               }
               while(true)
               {
                  if(_loc4_ > 6)
                  {
                     if(_loc7_)
                     {
                        if(_loc6_)
                        {
                           continue;
                        }
                        _loc2_.§%#M§(§@T§,_loc3_);
                     }
                     if(!_loc6_)
                     {
                        if(true)
                        {
                           break;
                        }
                     }
                     else
                     {
                        addr76:
                     }
                     _loc4_++;
                     continue;
                  }
                  _loc3_.push("CLONE_BIRD_HIGHLIGHT_0" + _loc4_);
                  §§goto(addr76);
               }
            }
            super(_loc2_.getAnimation(§@T§),true,20);
            if(_loc7_ || param1)
            {
               var _loc5_:*;
               scaleY = _loc5_ = 0.5;
               scaleX = _loc5_;
               if(!_loc6_)
               {
                  this.§^"G§(param1);
               }
            }
            return;
         }
         §§goto(addr33);
      }
      
      public function get tintColor() : uint
      {
         return this.§&#B§;
      }
      
      public function §^"G§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^"<§ = true;
         }
         do
         {
            this.§&#B§ = param1;
         }
         while(!_loc3_);
         
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.update(param1);
            loop0:
            while(true)
            {
               rotation -= param1 / 1000;
               loop1:
               while(true)
               {
                  §§push(this.§^"<§);
                  if(_loc3_ || this)
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc2_)
                     {
                        addr75:
                        if(!§§pop())
                        {
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 §§goto(addr20);
                              }
                              if(_loc2_ && this)
                              {
                                 break loop1;
                              }
                              if(_loc2_)
                              {
                                 continue loop1;
                              }
                              while(true)
                              {
                                 §>#;§.color = this.§&#B§;
                                 break loop1;
                              }
                           }
                           addr34:
                        }
                     }
                     while(true)
                     {
                        §§pop();
                        §§push(Boolean(§>#;§));
                        addr85:
                        continue loop1;
                        if(_loc2_ && param1)
                        {
                           continue;
                        }
                        §§goto(addr34);
                     }
                  }
                  §§goto(addr75);
               }
               while(true)
               {
                  if(_loc3_)
                  {
                     break loop0;
                  }
                  continue loop0;
               }
            }
            addr20:
            return;
         }
         §§goto(addr55);
      }
   }
}
