package §"!t§
{
   import §+!J§.§>n§;
   import flash.display.DisplayObject;
   import flash.geom.Rectangle;
   
   public class §;#T§ extends §>n§ implements §%x§
   {
      
      public static const §";§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §";§ = false;
         }
      }
      
      protected var _rect:Rectangle;
      
      protected var §8"X§:Array;
      
      public function §;#T§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§8"X§ = [];
            while(true)
            {
               super();
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     this._rect = new Rectangle();
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr61);
      }
      
      public function set rect(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(§";§)
            {
               loop0:
               while(true)
               {
                  param1.x = int(param1.x);
                  loop1:
                  while(true)
                  {
                     param1.y = int(param1.y);
                     addr99:
                     while(_loc3_)
                     {
                        param1.width = int(param1.width);
                        while(_loc3_)
                        {
                           param1.height = int(param1.height);
                           while(_loc3_)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 return;
                                 addr48:
                              }
                           }
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               y = param1.y;
               loop6:
               while(!_loc2_)
               {
                  this._rect = param1;
                  while(true)
                  {
                     this.onRectangleChanged();
                     if(_loc2_ && _loc3_)
                     {
                        continue;
                     }
                     if(!_loc3_)
                     {
                        continue loop6;
                     }
                     §§goto(addr41);
                  }
                  §§goto(addr48);
               }
               §§goto(addr99);
            }
         }
         §§goto(addr63);
      }
      
      public function get rect() : Rectangle
      {
         return this._rect;
      }
      
      protected function onRectangleChanged() : void
      {
      }
      
      public function get children() : Array
      {
         return this.§8"X§;
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§8"X§.push(param1);
         }
         return super.addChild(param1);
      }
      
      override public function removeChild(param1:DisplayObject) : DisplayObject
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§8"X§.indexOf(param1);
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ > -1)
            {
               if(_loc4_)
               {
                  this.§8"X§.splice(_loc2_,1);
               }
            }
         }
         return super.removeChild(param1);
      }
      
      public function onParentUpdate(param1:Rectangle) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§5"U§ = null;
         if(_loc6_ || _loc3_)
         {
            this.rect = param1;
         }
         for each(_loc2_ in this.children)
         {
            if(!_loc5_)
            {
               _loc2_.onParentUpdate(this.rect);
            }
         }
      }
      
      public function get §9#$§() : Number
      {
         return 0;
      }
      
      public function get §>"Z§() : Number
      {
         return 0;
      }
   }
}
