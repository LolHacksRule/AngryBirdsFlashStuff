package §!"2§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.LoaderContext;
   
   public class §1w§ extends Sprite
   {
      
      public static const §"K§:Number = 0.75;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §"K§ = 0.75;
         }
      }
      
      private var §;!X§:Bitmap;
      
      private var §[e§:BitmapData;
      
      private var §">§:String;
      
      public function §1w§(param1:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§">§ = param1;
            if(_loc4_)
            {
               loop1:
               while(true)
               {
                  addEventListener(MouseEvent.CLICK,this.§5V§);
                  while(true)
                  {
                     if(_loc4_)
                     {
                        buttonMode = true;
                        if(!(_loc4_ || _loc2_))
                        {
                           break;
                        }
                        if(!(_loc3_ && param1))
                        {
                           if(true)
                           {
                              scaleX = scaleY = §"K§;
                              if(_loc4_ || this)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              addr99:
                           }
                           continue loop1;
                           return;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
            x = 47;
            §§goto(addr99);
         }
      }
      
      public function get link() : String
      {
         return this.§">§;
      }
      
      public function §<!v§(param1:String) : Loader
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:URLRequest = new URLRequest(param1);
         var _loc3_:LoaderContext = new LoaderContext(true);
         var _loc4_:Loader;
         (_loc4_ = new Loader()).contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         if(_loc6_ || param1)
         {
            _loc4_.load(_loc2_,_loc3_);
         }
         return _loc4_;
      }
      
      private function §5V§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §3T§.§67§.§#m§();
         }
         var _loc2_:URLRequest = new URLRequest(this.§">§);
         if(_loc3_ || _loc2_)
         {
            navigateToURL(_loc2_,"_blank");
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Bitmap = (param1.currentTarget as LoaderInfo).content as Bitmap;
         if(_loc3_ || param1)
         {
            this.§[e§ = _loc2_.bitmapData.clone();
            do
            {
               this.§`!A§(this.§[e§);
            }
            while(_loc4_ && param1);
            
         }
      }
      
      public function §,!6§() : BitmapData
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§[e§)
            {
               if(!_loc2_)
               {
                  addr38:
                  this.§`!A§(this.§[e§);
               }
            }
            return this.§[e§;
         }
         §§goto(addr38);
      }
      
      public function §`!A§(param1:BitmapData) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Bitmap = new Bitmap(param1,"auto",true);
         if(!(_loc4_ && param1))
         {
            _loc2_.width = §?f§.§=Z§;
            while(true)
            {
               _loc2_.height = §?f§.§7G§;
               loop1:
               while(!_loc4_)
               {
                  while(true)
                  {
                     addChild(_loc2_);
                     if(_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
   }
}
