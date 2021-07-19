package § ! §
{
   import §6![§.§1!J§;
   import §6![§.DisplayObject;
   
   public class §`![§ extends §?n§
   {
       
      
      protected var §'!t§:§8-§;
      
      public function §`![§(param1:§8-§, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param2);
         }
         do
         {
            this.§'!t§ = param1;
         }
         while(!_loc3_);
         
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§1!J§ = param1 as §1!J§;
         if(!_loc3_)
         {
            if(!_loc2_)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr33:
                  if(param1)
                  {
                     if(!(_loc3_ && param1))
                     {
                        param1.dispose();
                        if(_loc4_ || param1)
                        {
                        }
                        addr82:
                        _loc2_.pivotX = -this.§'!t§.pivotX;
                        if(!_loc3_)
                        {
                           _loc2_.pivotY = -this.§'!t§.pivotY;
                        }
                        loop0:
                        while(true)
                        {
                           _loc2_.scaleX = this.§'!t§.scale;
                           do
                           {
                              if(_loc4_)
                              {
                                 continue;
                              }
                              continue loop0;
                           }
                           while(_loc2_.scaleY = this.§'!t§.scale, !_loc4_);
                           
                           §§goto(addr104);
                        }
                     }
                  }
               }
               _loc2_ = new §1!J§(this.§'!t§.texture,true);
               if(_loc4_ || _loc3_)
               {
                  §§goto(addr82);
               }
               addr104:
               return _loc2_;
            }
            _loc2_.texture = this.§'!t§.texture;
            §§goto(addr82);
         }
         §§goto(addr33);
      }
   }
}
