package §9R§
{
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §!!?§ extends EventDispatcher
   {
       
      
      public var itemIndex:int;
      
      public var itemCount:int;
      
      public var urlLoader:URLLoader;
      
      public var urlRequest:URLRequest;
      
      public function §!!?§(itemIndex:int, itemCount:int, urlLoader:URLLoader, urlRequest:URLRequest)
      {
         super();
         this.itemCount = itemCount;
         this.itemIndex = itemIndex;
         this.urlLoader = urlLoader;
         this.urlRequest = urlRequest;
      }
   }
}
