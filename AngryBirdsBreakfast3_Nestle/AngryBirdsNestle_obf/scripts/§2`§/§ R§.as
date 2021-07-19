package §2`§
{
   import §3!J§.§4!2§;
   import §3!J§.DisplayObject;
   
   public class § R§ extends §=!"§
   {
       
      
      protected var §>"5§:§5E§;
      
      public function § R§(param1:§5E§, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super(param2);
            do
            {
               this.§>"5§ = param1;
            }
            while(!_loc3_);
            
         }
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§4!2§ = param1 as §4!2§;
         if(_loc3_ || this)
         {
            if(!_loc2_)
            {
               if(!(_loc4_ && this))
               {
                  if(param1)
                  {
                     if(!_loc4_)
                     {
                        param1.dispose();
                        if(_loc4_)
                        {
                        }
                        addr76:
                        _loc2_.pivotX = -this.§>"5§.pivotX;
                        if(!_loc4_)
                        {
                           _loc2_.pivotY = -this.§>"5§.pivotY;
                           do
                           {
                              _loc2_.scaleX = this.§>"5§.scale;
                              do
                              {
                                 _loc2_.scaleY = this.§>"5§.scale;
                              }
                              while(_loc4_ && this);
                              
                           }
                           while(_loc4_);
                           
                        }
                        return _loc2_;
                        addr105:
                     }
                  }
                  _loc2_ = new §4!2§(this.§>"5§.texture,true);
                  if(_loc3_ || param1)
                  {
                     §§goto(addr76);
                  }
                  §§goto(addr105);
               }
            }
            else
            {
               _loc2_.texture = this.§>"5§.texture;
            }
         }
         §§goto(addr76);
      }
   }
}
