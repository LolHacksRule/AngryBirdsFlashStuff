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
         super();
         this.inspector = new §#A§(param1,new Rectangle(0,0,50,50));
         addChild(this.inspector);
      }
      
      override public function onParentUpdate(param1:Rectangle) : void
      {
         this.inspector.onParentUpdate(param1);
      }
   }
}
