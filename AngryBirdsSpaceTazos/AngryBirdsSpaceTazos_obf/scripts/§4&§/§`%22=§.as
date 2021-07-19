package §4&§
{
   import §7!8§.DisplayObject;
   import §7!8§.§`y§;
   
   public class §`"=§ extends §else§
   {
       
      
      protected var §2-§:§'!"§;
      
      public function §`"=§(param1:§'!"§, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super(param2);
            do
            {
               this.§2-§ = param1;
            }
            while(!_loc3_);
            
         }
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§`y§ = param1 as §`y§;
         if(_loc4_)
         {
            if(!_loc2_)
            {
               if(_loc4_ || param1)
               {
                  addr33:
                  if(param1)
                  {
                     if(!(_loc3_ && this))
                     {
                        addr42:
                        param1.dispose();
                        if(_loc3_ && param1)
                        {
                        }
                        addr82:
                        _loc2_.pivotX = -this.§2-§.pivotX;
                        if(!(_loc3_ && this))
                        {
                           _loc2_.pivotY = -this.§2-§.pivotY;
                        }
                        while(true)
                        {
                           _loc2_.scaleX = this.§2-§.scale;
                           while(!(_loc3_ && _loc2_))
                           {
                              _loc2_.scaleY = this.§2-§.scale;
                              if(!_loc3_)
                              {
                                 return _loc2_;
                              }
                           }
                        }
                        addr140:
                     }
                  }
                  _loc2_ = new §`y§(this.§2-§.texture,true);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr82);
                  }
                  §§goto(addr140);
               }
               §§goto(addr42);
            }
            else
            {
               _loc2_.texture = this.§2-§.texture;
            }
            §§goto(addr42);
         }
         §§goto(addr33);
      }
   }
}
