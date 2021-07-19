package §50§
{
   import com.rovio.assets.§69§;
   import flash.display.Sprite;
   
   public class MapPig extends Sprite
   {
       
      
      private var §"d§:§8!e§;
      
      private var § "=§:Number;
      
      public function MapPig(param1:§8!e§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
         }
         while(true)
         {
            this.§"d§ = param1;
            while(_loc3_)
            {
               buttonMode = true;
               if(_loc3_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §4R§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            this.§ "=§ = param1;
         }
         var _loc2_:§+!&§ = this.§"d§.§^<§(this.§ "=§);
         if(_loc4_ || _loc2_)
         {
            this.x = _loc2_.x;
            if(!(_loc5_ && param1))
            {
               addr61:
               this.y = _loc2_.y;
            }
            var _loc3_:Class = §69§.§ 0§("MapPig");
            if(!_loc5_)
            {
               addChild(new _loc3_());
               while(true)
               {
                  width = 50;
                  while(_loc4_ || _loc2_)
                  {
                     scaleY = scaleX;
                     if(!(_loc4_ || _loc3_))
                     {
                        continue;
                     }
                     return;
                     addr88:
                  }
               }
            }
            §§goto(addr88);
         }
         §§goto(addr61);
      }
   }
}
