package §7!F§
{
   public class §+W§ extends §7#5§
   {
       
      
      protected var §1A§:Vector.<§7#5§>;
      
      public function §+W§(param1:String = null)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super(param1);
         }
         do
         {
            this.§1A§ = new Vector.<§7#5§>();
         }
         while(!_loc3_);
         
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.dispose();
            do
            {
               this.§1A§ = null;
            }
            while(_loc1_);
            
         }
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§1A§ = new Vector.<§7#5§>();
         }
      }
      
      public function §+#T§(param1:§7#5§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§1A§.indexOf(param1) < 0)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr51:
                  this.§1A§.push(param1);
               }
            }
            return;
         }
         §§goto(addr51);
      }
      
      override public function get textureMemoryUsage() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§7#5§ = null;
         §§push(super.textureMemoryUsage);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         for each(_loc2_ in this.§1A§)
         {
            if(_loc6_ || this)
            {
               §§push(_loc1_);
               if(!(_loc5_ && this))
               {
                  §§push(int(§§pop() + _loc2_.textureMemoryUsage));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      override public function get bitmapMemoryUsage() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§7#5§ = null;
         §§push(super.bitmapMemoryUsage);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         for each(_loc2_ in this.§1A§)
         {
            if(!_loc5_)
            {
               §§push(_loc1_);
               if(!_loc5_)
               {
                  §§push(int(§§pop() + _loc2_.bitmapMemoryUsage));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      override public function initializeTextures() : Boolean
      {
         return super.initializeTextures();
      }
      
      override public function reInitializeTextures() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§7#5§ = null;
         if(!_loc4_)
         {
            super.reInitializeTextures();
         }
         var _loc3_:* = this.§1A§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc4_ && _loc3_))
            {
               _loc1_.reInitializeTextures();
            }
         }
      }
      
      override public function getTexture(param1:String) : §8!W§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§7#5§ = null;
         var _loc2_:§8!W§ = super.getTexture(param1);
         if(!_loc7_)
         {
            if(!_loc2_)
            {
               addr28:
               for each(_loc3_ in this.§1A§)
               {
                  _loc2_ = _loc3_.getTexture(param1);
                  if(_loc7_ && _loc2_)
                  {
                     break;
                  }
                  addr75:
                  if(!_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr75);
               }
            }
            return _loc2_;
         }
         §§goto(addr28);
      }
      
      override public function get textureCount() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§7#5§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§1A§)
         {
            if(_loc6_ || _loc1_)
            {
               §§push(_loc1_);
               if(!(_loc5_ && _loc1_))
               {
                  §§push(int(§§pop() + _loc2_.textureCount));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      override public function getTextureWithIndex(param1:int) : §8!W§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§7#5§ = null;
         if(_loc5_ || _loc2_)
         {
            §§push(param1);
            if(!_loc6_)
            {
               §§push(0);
               if(_loc5_ || _loc2_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc5_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           addr49:
                           §§pop();
                           if(!(_loc6_ && param1))
                           {
                              §§push(param1);
                              if(!_loc6_)
                              {
                                 addr73:
                                 if(§§pop() >= this.textureCount)
                                 {
                                    if(!_loc6_)
                                    {
                                       §§goto(addr76);
                                    }
                                    else
                                    {
                                       addr78:
                                       §§push(0);
                                    }
                                 }
                                 §§goto(addr78);
                              }
                              for each(_loc2_ in this.§1A§)
                              {
                                 if(_loc6_)
                                 {
                                    continue;
                                 }
                                 §§push(param1);
                                 if(_loc5_)
                                 {
                                    §§push(_loc2_.textureCount);
                                    if(!(_loc6_ && this))
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             return _loc2_.getTextureWithIndex(param1);
                                          }
                                       }
                                       else
                                       {
                                          addr136:
                                          §§push(param1);
                                          if(!_loc6_)
                                          {
                                             §§push(_loc2_.textureCount);
                                          }
                                          param1 = §§pop();
                                       }
                                       continue;
                                    }
                                    §§push(int(§§pop() - §§pop()));
                                 }
                                 §§goto(addr136);
                              }
                              return null;
                           }
                           §§goto(addr78);
                        }
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr49);
               }
            }
            §§goto(addr73);
         }
         addr76:
         return null;
      }
   }
}
