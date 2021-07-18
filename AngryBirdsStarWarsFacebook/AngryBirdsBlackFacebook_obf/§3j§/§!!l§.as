package §3j§
{
   import §,0§.§#A§;
   import com.furusystems.dconsole2.§!!%§;
   import flash.geom.Rectangle;
   
   public class §!!l§ extends §9#'§
   {
       
      
      public var inspector:§#A§;
      
      public function §!!l§(param1:§!!%§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super();
            while(true)
            {
               this.inspector = new §#A§(param1,new Rectangle(0,0,50,50));
               while(_loc2_ || _loc3_)
               {
                  addChild(this.inspector);
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr45:
               }
            }
         }
         §§goto(addr45);
      }
      
      override public function onParentUpdate(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.inspector.onParentUpdate(param1);
         }
      }
   }
}
