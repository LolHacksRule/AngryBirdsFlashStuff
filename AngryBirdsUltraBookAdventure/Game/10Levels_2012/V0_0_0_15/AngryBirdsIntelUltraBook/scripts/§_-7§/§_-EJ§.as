package §_-7§
{
   import §_-Yl§.§_-5q§;
   import §_-eS§.§_-OY§;
   import §_-gU§.Popup;
   import §_-gU§.§_-tk§;
   import §_-wA§.§_-0X§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §_-EJ§
   {
      
      protected static var §_-00v§:§_-5q§;
      
      protected static var §_-sI§:StatePopupManager;
      
      public static var §_-8k§:Object;
      
      public static var §_-Uf§:Popup;
      
      public static var §_-0DU§:Boolean;
      
      private static var §_-B6§:Number;
      
      private static var §_-9I§:Number;
       
      
      public function §_-EJ§()
      {
         super();
      }
      
      public static function §_-Kf§() : Boolean
      {
         return §_-Uf§ != null;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§_-00v§)
         {
            return;
         }
         §_-sI§ = new StatePopupManager();
         §_-00v§ = new §_-0X§(§_-sI§);
         §_-00v§.init(<xml></xml>,new MovieClip());
         §_-00v§.activateView();
         param1.addChild(§_-00v§.§_-jX§.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         if(§_-00v§)
         {
            §_-00v§.viewWidth = param1;
            §_-00v§.viewHeight = param2;
         }
         §_-B6§ = param1;
         §_-9I§ = param2;
      }
      
      public static function §_-4D§(param1:String) : void
      {
         if(§_-Uf§)
         {
            §_-Uf§.close();
         }
         var _loc2_:§_-g6§ = new §_-g6§(§_-00v§,§_-sI§,param1);
         §_-HI§(_loc2_);
      }
      
      public static function §_-9a§() : §_-Ce§
      {
         var _loc1_:§_-Ce§ = new §_-Ce§(§_-00v§,§_-sI§);
         §_-HI§(_loc1_);
         return _loc1_;
      }
      
      public static function §_-QC§(param1:String = null) : void
      {
         try
         {
            §_-HI§(new §_-42§(§_-00v§,§_-sI§,param1 || §_-42§.§_-aP§));
            if(param1 == §_-42§.§_-06o§)
            {
               §_-OY§.§_-6V§();
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §_-L7§() : void
      {
         try
         {
            §_-HI§(new §_-nD§(§_-00v§,§_-sI§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §_-8H§() : void
      {
         try
         {
            §_-HI§(new §_-ir§(§_-00v§,§_-sI§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §_-74§() : void
      {
         §_-HI§(new §_-t6§(§_-00v§,§_-sI§));
      }
      
      public static function §_-05y§(param1:String, param2:String, param3:int, param4:String) : void
      {
         §_-HI§(new §_-Fz§(§_-00v§,§_-sI§,param1,param2,param3,param4));
      }
      
      private static function §_-HI§(param1:Popup, param2:Boolean = true) : void
      {
         if(§_-Uf§ is §_-42§ || §_-Uf§ is §_-nD§)
         {
            return;
         }
         if(§_-Uf§)
         {
            if((§_-Uf§ is §_-ir§ || §_-Uf§ is §_-Ce§) && !(param1 is §_-42§ || param1 is §_-nD§))
            {
               return;
            }
            §_-Uf§.deActivate();
         }
         §_-Uf§ = param1;
         param1.open(param2);
         param1.mClip.addEventListener(§_-tk§.§_-C9§,§_-67§);
         setViewSize(§_-B6§,§_-9I§);
      }
      
      private static function §_-67§(param1:§_-tk§) : void
      {
         if(param1.§_-l-§ == §_-Uf§)
         {
            §_-Uf§ = null;
         }
      }
   }
}
