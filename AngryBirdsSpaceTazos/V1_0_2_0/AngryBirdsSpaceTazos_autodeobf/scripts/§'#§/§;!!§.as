package §'#§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   
   public class §;!!§
   {
      
      public static const §]"#§:String = "Container_";
      
      public static const §4!A§:String = "MovieClip_";
      
      public static const §^!a§:Vector.<String> = new <String>[§]"#§,§4!A§];
       
      
      public function §;!!§()
      {
         super();
      }
      
      public static function §8!2§(param1:String, param2:Vector.<String>) : Boolean
      {
         var _loc3_:uint = 0;
         while(_loc3_ < param2.length)
         {
            if(param1.indexOf(param2[_loc3_]) == 0)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      private static function §,C§(param1:MovieClip, param2:Vector.<String>) : Boolean
      {
         var _loc4_:FrameLabel = null;
         var _loc5_:int = 0;
         var _loc3_:Array = param1.currentLabels;
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < param2.length)
            {
               if(_loc4_.name.indexOf(param2[_loc5_]) == 0)
               {
                  return true;
               }
               _loc5_++;
            }
         }
         return false;
      }
      
      private static function §!!L§(param1:MovieClip, param2:Vector.<String>, param3:Vector.<MovieClip>) : void
      {
         if(param3.indexOf(param1) != -1)
         {
            return;
         }
         if(§,C§(param1,param2))
         {
            param1.gotoAndStop(1);
            param1.visible = false;
            param3.push(param1);
         }
      }
      
      public static function §<"§(param1:MovieClip, param2:Vector.<String>, param3:Vector.<MovieClip>, param4:Vector.<String>) : void
      {
         var _loc6_:MovieClip = null;
         var _loc5_:uint = 0;
         while(_loc5_ < param1.numChildren)
         {
            if(_loc6_ = param1.getChildAt(_loc5_) as MovieClip)
            {
               if(§8!2§(_loc6_.name,param4))
               {
                  §!!L§(_loc6_,param2,param3);
                  if(_loc6_.name.indexOf(§]"#§) == 0)
                  {
                     §<"§(_loc6_,param2,param3,param4);
                  }
               }
            }
            _loc5_++;
         }
      }
   }
}
