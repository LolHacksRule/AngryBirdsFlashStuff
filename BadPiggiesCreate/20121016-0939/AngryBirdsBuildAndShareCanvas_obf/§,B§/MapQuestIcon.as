package §,B§
{
   import §&"'§.§7!E§;
   import §&"'§.§@5§;
   import com.rovio.assets.§>!]§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class MapQuestIcon extends Sprite
   {
       
      
      private var §6!k§:MovieClip;
      
      public function MapQuestIcon(param1:Object, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:§@5§ = null;
         if(!(_loc11_ && param3))
         {
            super();
         }
         var _loc6_:MovieClip;
         var _loc5_:Class;
         (_loc6_ = new (_loc5_ = §>!]§.§1!8§("MapQuestIcon"))()).gotoAndStop(1);
         if(!(_loc11_ && param1))
         {
            addChild(_loc6_);
            while(true)
            {
               this.x = param2;
               addr91:
               while(_loc12_)
               {
               }
            }
         }
         while(true)
         {
            this.y = param3;
            loop3:
            while(true)
            {
               addr71:
               addr129:
               while(param4)
               {
                  if(_loc12_)
                  {
                     if(_loc12_)
                     {
                        scaleX = 0;
                        while(true)
                        {
                           scaleY = 0;
                           if(!(_loc12_ || param1))
                           {
                              break;
                           }
                           if(!_loc11_)
                           {
                              continue loop3;
                           }
                        }
                        addr138:
                        this.§6!k§.scaleX = this.§6!k§.scaleY = this.§6!k§.alpha = 0;
                     }
                     else
                     {
                        §§goto(addr91);
                     }
                  }
                  var _loc7_:Object = this.§6!k§.getChildByName("text");
                  var _loc8_:TextField;
                  (_loc8_ = this.§6!k§.getChildByName("text") as TextField).text = param1.name;
                  if(_loc12_)
                  {
                     _loc8_.autoSize = "center";
                     addEventListener(MouseEvent.ROLL_OVER,this.§8!M§);
                     addr208:
                     if(_loc12_)
                     {
                        addEventListener(MouseEvent.ROLL_OUT,this.§&y§);
                        if(_loc11_)
                        {
                           §§goto(addr208);
                        }
                        return;
                        addr210:
                     }
                     addr214:
                     §§goto(addr214);
                  }
                  §§goto(addr210);
               }
               this.§6!k§ = _loc6_.getChildByName("NameBox") as MovieClip;
               if(_loc12_)
               {
                  §§goto(addr138);
               }
               §§goto(addr156);
            }
         }
      }
      
      private function §8!M§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§@5§ = §7!E§.§2=§.§<!C§(this.§6!k§,{
            "alpha":1,
            "scaleX":1,
            "scaleY":1
         },null,0.2,§7!E§.§throw§);
         if(_loc4_)
         {
            _loc2_.play();
         }
      }
      
      private function §&y§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§@5§ = §7!E§.§2=§.§<!C§(this.§6!k§,{
            "alpha":0,
            "scaleX":0,
            "scaleY":0
         },null,0.2,§7!E§.§throw§);
         if(_loc4_)
         {
            _loc2_.play();
         }
      }
      
      public function get position() : Point
      {
         return new Point(x,y);
      }
   }
}
