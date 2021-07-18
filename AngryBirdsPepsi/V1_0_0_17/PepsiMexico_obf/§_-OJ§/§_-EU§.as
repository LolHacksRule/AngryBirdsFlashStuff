package §_-OJ§
{
   import §_-4g§.Texture;
   import §_-LP§.DisplayObject;
   import §_-LP§.Sprite;
   import §_-LP§.§_-19§;
   import §_-Ra§.§_-2X§;
   import §_-hU§.§_-MB§;
   import flash.display.BitmapData;
   
   public class §_-EU§ extends Sprite
   {
       
      
      protected var §_-ta§:Sprite;
      
      protected var §_-yy§:DisplayObject;
      
      protected var §_-nh§:Sprite;
      
      public function §_-EU§()
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            if(!_loc4_)
            {
               addChild(this.§_-nh§ = new Sprite());
               if(!_loc3_)
               {
               }
               addr42:
               var _loc1_:Texture = §_-2X§.§_-mE§.§_-pz§(new BitmapData(2,2,false,0));
               if(!(_loc4_ && _loc1_))
               {
                  this.§_-yy§ = new §_-19§(_loc1_,true);
                  if(_loc3_)
                  {
                     addr75:
                     §§push(this.§_-yy§);
                     if(_loc3_ || _loc1_)
                     {
                        §§push(§_-MB§.§_-1q§);
                        if(!_loc4_)
                        {
                           §§pop().width = §§pop();
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(this.§_-yy§);
                              if(_loc3_ || _loc2_)
                              {
                                 addr107:
                                 §§pop().height = §_-MB§.§_-SP§;
                                 addr105:
                                 if(_loc3_ || _loc3_)
                                 {
                                    addChild(this.§_-yy§);
                                    if(_loc4_ && _loc1_)
                                    {
                                    }
                                    §§goto(addr137);
                                 }
                                 §§push(this.§_-yy§);
                              }
                              §§pop().alpha = 0.5;
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr105);
                  }
                  addr137:
                  return;
               }
               §§goto(addr75);
            }
            this.§_-nh§.addChild(this.§_-ta§ = new Sprite());
         }
         §§goto(addr42);
      }
      
      public function get §_-61§() : Sprite
      {
         return this.§_-ta§;
      }
      
      public function get §_-8y§() : DisplayObject
      {
         return this.§_-yy§;
      }
      
      public function get §_-Nt§() : Sprite
      {
         return this.§_-nh§;
      }
      
      public function §_-nk§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(this.§_-yy§);
            if(_loc4_ || this)
            {
               §§push(param1);
               if(_loc4_)
               {
                  §§pop().width = §§pop();
                  if(_loc4_)
                  {
                     addr53:
                     this.§_-yy§.height = param2;
                  }
                  return;
               }
            }
         }
         §§goto(addr53);
      }
   }
}
