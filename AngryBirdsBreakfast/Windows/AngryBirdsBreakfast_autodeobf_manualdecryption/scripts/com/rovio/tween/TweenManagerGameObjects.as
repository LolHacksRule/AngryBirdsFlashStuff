package com.rovio.tween
{
   public class TweenManagerGameObjects extends TweenManager
   {
      
      private static var sInstance:TweenManagerGameObjects;
       
      
      public function TweenManagerGameObjects()
      {
         super();
      }
      
      public static function get instance() : TweenManagerGameObjects
      {
         if(!sInstance)
         {
            sInstance = new TweenManagerGameObjects();
         }
         return sInstance;
      }
   }
}
