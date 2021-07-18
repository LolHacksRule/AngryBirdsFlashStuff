package §7!F§
{
   import §!!U§.§#"t§;
   import §!!U§.DisplayObject;
   
   public class §?G§ extends §<d§
   {
       
      
      protected var §^"R§:§8!W§;
      
      public function §?G§(param1:String, param2:§8!W§, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            super(param1,param3);
            do
            {
               this.§^"R§ = param2;
            }
            while(_loc4_ && param3);
            
         }
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§#"t§ = param1 as §#"t§;
         if(!_loc3_)
         {
            if(!_loc2_)
            {
               if(_loc4_)
               {
                  if(param1)
                  {
                     if(!_loc3_)
                     {
                        param1.dispose();
                        if(_loc4_)
                        {
                           §§goto(addr36);
                        }
                     }
                  }
               }
               §§goto(addr36);
            }
            else
            {
               _loc2_.texture = this.§^"R§.texture;
            }
            §§goto(addr62);
         }
         addr36:
         _loc2_ = new §#"t§(this.§^"R§.texture,true);
         if(!_loc3_)
         {
            addr62:
            _loc2_.pivotX = -this.§^"R§.pivotX;
            if(!_loc3_)
            {
               _loc2_.pivotY = -this.§^"R§.pivotY;
               loop0:
               while(true)
               {
                  _loc2_.scaleX = this.§^"R§.scale;
                  do
                  {
                     if(!(_loc3_ && param1))
                     {
                        continue;
                     }
                     continue loop0;
                  }
                  while(_loc2_.scaleY = this.§^"R§.scale, _loc3_ && _loc2_);
                  
                  §§goto(addr89);
               }
            }
         }
         addr89:
         return _loc2_;
      }
   }
}
